package com.TechSansar.util;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import jakarta.servlet.http.Part;

/**
 * Utility class for handling image file uploads.
 * <p>
 * This class provides methods for extracting the file name from a {@link Part}
 * object and uploading the image file to a specified directory on the server.
 * </p>
 */
public class ImageUtil {

    private static final long MAX_FILE_SIZE = 2 * 1024 * 1024; // 2 MB max size
    private static final String[] ALLOWED_EXTENSIONS = {"jpg", "jpeg", "png", "gif"};

    /**
     * Extracts the file name from the given {@link Part} object based on the
     * "content-disposition" header.
     * 
     * @param part the {@link Part} object representing the uploaded file.
     * @return the extracted file name.
     */
    public String getImageNameFromPart(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        String imageName = null;
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                imageName = s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        if (imageName == null || imageName.isEmpty()) {
            imageName = "download.png";
        }
        return imageName;
    }

    /**
     * Uploads the image file from the given {@link Part} object to a specified
     * directory on the server and validates file type and size.
     * 
     * @param part the {@link Part} object representing the uploaded image file.
     * @param rootPath the root path of the web application.
     * @param saveFolder the folder where the image will be saved.
     * @return true if the file was successfully uploaded; false otherwise.
     */
    public boolean uploadImage(Part part, String rootPath, String saveFolder) {
        String savePath = getSavePath(saveFolder);
        File fileSaveDir = new File(savePath);

        // Ensure the directory exists
        if (!fileSaveDir.exists()) {
            if (!fileSaveDir.mkdir()) {
                return false; // Failed to create the directory
            }
        }

        try {
            // Validate file type and size
            String imageName = getImageNameFromPart(part);
            String fileExtension = getFileExtension(imageName);

            if (!isValidFileType(fileExtension)) {
                throw new IllegalArgumentException("Invalid file type. Only JPG, JPEG, PNG, and GIF are allowed.");
            }

            if (part.getSize() > MAX_FILE_SIZE) {
                throw new IllegalArgumentException("File size exceeds the maximum limit of 2 MB.");
            }

            // Save the file to the server
            String filePath = savePath + "/" + imageName;
            part.write(filePath);
            return true; // Upload successful
        } catch (IOException | IllegalArgumentException e) {
            e.printStackTrace();
            return false; // Upload failed
        }
    }

    /**
     * Validates the file extension against allowed types.
     * 
     * @param extension the file extension.
     * @return true if the file extension is valid; false otherwise.
     */
    private boolean isValidFileType(String extension) {
        return Arrays.asList(ALLOWED_EXTENSIONS).contains(extension.toLowerCase());
    }

    /**
     * Extracts the file extension from the file name.
     * 
     * @param fileName the file name.
     * @return the file extension.
     */
    private String getFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf(".");
        return (dotIndex == -1) ? "" : fileName.substring(dotIndex + 1);
    }

    /**
     * Returns the path where the image will be saved on the server.
     * 
     * @param saveFolder the folder where the image will be saved.
     * @return the save path.
     */
    public String getSavePath(String saveFolder) {
        return "C:/Users/Lenovo/eclipse-workspace/TechSansar/src/main/webapp/resources/images/" + saveFolder + "/";
    }
}
