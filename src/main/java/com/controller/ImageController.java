package com.controller;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;


@Controller
@RequestMapping("/image")
public class ImageController {

	@RequestMapping(value = "/randomImage")
	public void random(HttpServletResponse response, HttpSession session) throws IOException {
		String sRand = "";
		// 在内存中创建图象
		int width = 85, height = 30;
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 获取图形上下文
		Graphics g = image.getGraphics();
		// 生成随机类
		Random random = new Random();
		// 设定背景色
		g.setColor(getRandColor(100, 250));
		g.fillRect(2, 2, width, height);
		// 设定字体
		g.setFont(new Font("Times New Roman", Font.PLAIN, 22));
		// 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
		g.setColor(getRandColor(160, 200));
		for (int i = 0; i < 155; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int xl = random.nextInt(12);
			int yl = random.nextInt(12);
			g.drawLine(x, y, x + xl, y + yl);
		}
		// 取随机产生的认证码(4位数字)
		for (int i = 0; i < 4; i++) {
			String rand = String.valueOf(random.nextInt(10));
			sRand += rand;
			// 将认证码显示到图象中
			g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));// 调用函数出来的颜色相同，可能是因为种子太接近，所以只能直接生成
			g.drawString(rand, 13 * i + 6, 16);
		}
		// 图象生效
		g.dispose();
		// 处理响应
		response.setContentType("image/jpg");
		// 获得输入流
		ByteArrayOutputStream bs = new ByteArrayOutputStream();
		ImageOutputStream imOut = ImageIO.createImageOutputStream(bs);
		ImageIO.write(image, "jpg", imOut); // scaledImage1为BufferedImage，jpg为图像的类型
		InputStream is = new ByteArrayInputStream(bs.toByteArray());
		IOUtils.copy(is, response.getOutputStream());

		// 把生成的验证码放入到session作用域
		session.setAttribute("code", sRand);
	}

	private Color getRandColor(int fc, int bc) {// 给定范围获得随机颜色
		Random random = new Random();
		if (fc > 255)
			fc = 255;
		if (bc > 255)
			bc = 255;
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}
}