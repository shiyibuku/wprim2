package com.ninemax.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.commons.io.IOUtils;

import com.jfinal.kit.PathKit;
import com.jfinal.upload.UploadFile;

/**
 * 上传文件And判断文件目录是否存在
 * 
 * @author Darker
 * 
 */
public class FilesUtil {

	// 上传封面和样本(期刊)
	public static void UploadFilesAndExistFiles(UploadFile pictureFile,
			UploadFile journalFile) throws Exception {
		// 得到存放文件路径
		File existPicture = new File(PathKit.getWebRootPath()
				+ "/upload/pictureFile/");
		File existJournalFile = new File(PathKit.getWebRootPath()
				+ "/upload/journalFile/");
		// 如果存放路径存在?上传:创建存放文件路径
		if (existPicture.exists() && existJournalFile.exists()) {
			// 上传图片到指定路径
			IOUtils.copy(
					new FileInputStream(pictureFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/pictureFile/", pictureFile
									.getFileName())));
			// 上传文件到指定路径
			IOUtils.copy(
					new FileInputStream(journalFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/journalFile/", journalFile
									.getFileName())));
		} else {
			// 创建文件存放路径
			existPicture.mkdirs();
			existJournalFile.mkdirs();
			// 上传图片到指定路径
			IOUtils.copy(
					new FileInputStream(pictureFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/pictureFile/", pictureFile
									.getFileName())));
			// 上传文件到指定路径
			IOUtils.copy(
					new FileInputStream(journalFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/journalFile/", journalFile
									.getFileName())));
		}
	}

	// 上传封面
	public static void PictureFileAndExistPictureFile(UploadFile pictureFile)
			throws Exception {
		// 得到存放文件路径
		File existPicture = new File(PathKit.getWebRootPath()
				+ "/upload/pictureFile/");
		// 如果存放路径存在?上传:创建存放文件路径
		if (existPicture.exists()) {
			// 上传图片到指定路径
			IOUtils.copy(
					new FileInputStream(pictureFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/pictureFile/", pictureFile
									.getFileName())));
		} else {
			// 创建文件存放路径
			existPicture.mkdirs();
			// 上传图片到指定路径
			IOUtils.copy(
					new FileInputStream(pictureFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/pictureFile/", pictureFile
									.getFileName())));
		}
	}

	// 上传样本
	public static void JournalFileAndExistJournalFile(UploadFile journalFile)
			throws Exception {
		// 得到存放文件路径
		File existJournalFile = new File(PathKit.getWebRootPath()
				+ "/upload/journalFile/");
		// 如果存放路径存在?上传:创建存放文件路径
		if (existJournalFile.exists()) {
			// 上传文件到指定路径
			IOUtils.copy(
					new FileInputStream(journalFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/journalFile/", journalFile
									.getFileName())));
		} else {
			// 创建文件存放路径
			existJournalFile.mkdirs();
			// 上传文件到指定路径
			IOUtils.copy(
					new FileInputStream(journalFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/journalFile/", journalFile
									.getFileName())));
		}
	}

	// 上传论文
	public static void ArticleFileAndExistArticleFile(UploadFile ArticleFile)
			throws Exception {
		// 得到存放文件路径
		File existArticleFile = new File(PathKit.getWebRootPath()
				+ "/upload/articleFile/");
		// 如果存放路径存在?上传:创建存放文件路径
		if (existArticleFile.exists()) {
			// 上传文件到指定路径
			IOUtils.copy(
					new FileInputStream(ArticleFile.getFile()),
					new FileOutputStream(
							new File(PathKit.getWebRootPath()
									+ "/upload/articleFile/", ArticleFile
									.getFileName())));
		} else {
			// 创建文件存放路径
			existArticleFile.mkdirs();
			// 上传文件到指定路径
						IOUtils.copy(
								new FileInputStream(ArticleFile.getFile()),
								new FileOutputStream(
										new File(PathKit.getWebRootPath()
												+ "/upload/articleFile/", ArticleFile
												.getFileName())));
		}
	}

}
