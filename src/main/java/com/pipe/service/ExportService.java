package com.pipe.service;
import java.io.IOException;
import java.util.List;
 
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.pipe.model.PipelineMoniter;
import com.pipe.repositary.PipelineRepositary;
 
public class ExportService {
    private XSSFWorkbook workbook;
    private XSSFSheet sheet;
    private List<PipelineMoniter> listUsers;
     
    
	public ExportService( List<PipelineMoniter> listUsers2) {
        this.listUsers = listUsers2;
        workbook = new XSSFWorkbook();
    }
 
 

	private void writeHeaderLine() {
        sheet = workbook.createSheet("Users");
         
        Row row = sheet.createRow(0);
         
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setBold(true);
        font.setFontHeight(16);
        style.setFont(font);
         
        createCell(row, 0, "Pipe ID", style);      
        createCell(row, 1, "Customer Name", style);       
        createCell(row, 2, "Location", style);    
        createCell(row, 3, "PaymentMode", style);
        
         
    }
     
    private void createCell(Row row, int columnCount, Object value, CellStyle style) {
        sheet.autoSizeColumn(columnCount);
        Cell cell = row.createCell(columnCount);
        if (value instanceof Long) {
        	
        	
        		 cell.setCellValue((Long) value);
       }else {
        	
        	if(value!=null) {
        		cell.setCellValue((String) value);
       	}
            
        }
        cell.setCellStyle(style);
    }
     
    private void writeDataLines() {
        int rowCount = 1;
 
        CellStyle style = workbook.createCellStyle();
        XSSFFont font = workbook.createFont();
        font.setFontHeight(14);
        style.setFont(font);
                 
        for (PipelineMoniter user : listUsers) {
            Row row = sheet.createRow(rowCount++);
            int columnCount = 0;
             
            createCell(row, columnCount++, user.getPipelineId(), style);
            createCell(row, columnCount++, user.getCustomerName(), style);
            createCell(row, columnCount++, user.getLocation(), style);
            createCell(row, columnCount++, user.getEmail(), style);
           
             
        }
    }
     
    public void export(HttpServletResponse response) throws IOException {
        writeHeaderLine();
        System.out.println("Header Success");
        writeDataLines();
        System.out.println("Dataline sucess  Success");
         
        ServletOutputStream outputStream = response.getOutputStream();
        workbook.write(outputStream);
        workbook.close();
         
        outputStream.close();
         
    }
}