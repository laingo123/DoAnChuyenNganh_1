from sys import path
from tkinter import*
from tkinter import ttk
from PIL import Image,ImageTk
import os
import mysql.connector
import cv2
import numpy as np
from tkinter import messagebox

class Train:

    def __init__(self,root):
        self.root=root
        self.root.geometry("1366x768+0+0")
        self.root.title("Train Pannel")

        #Phần này là thiết lập các nhãn hình ảnh
        # Hình ảnh đầu tiên ở phần đầu trang
        img=Image.open(r"C:\Users\LENOVO\PycharmProjects\Python-FYP-Face-Recognition-Attendence-System-master\Python-FYP-Face-Recognition-Attendence-System-master\Images_GUI\banner.jpg")
        img=img.resize((1366,130))
        self.photoimg=ImageTk.PhotoImage(img)

        #  # Đặt hình ảnh làm nhãn
        f_lb1 = Label(self.root,image=self.photoimg)
        f_lb1.place(x=0,y=0,width=1366,height=130)

        # Hình nền phía sau
        bg1=Image.open(r"C:\Users\LENOVO\PycharmProjects\Python-FYP-Face-Recognition-Attendence-System-master\Python-FYP-Face-Recognition-Attendence-System-master\Images_GUI\t_bg1.jpg")
        bg1=bg1.resize((1366,768))
        self.photobg1=ImageTk.PhotoImage(bg1)

        # Đặt hình ảnh làm nhãn nền
        bg_img = Label(self.root,image=self.photobg1)
        bg_img.place(x=0,y=130,width=1366,height=768)


        #Phần tiêu đề
        title_lb1 = Label(bg_img,text="Welcome to Training Pannel",font=("verdana",30,"bold"),bg="white",fg="navyblue")
        title_lb1.place(x=0,y=0,width=1366,height=45)

        # Tạo các nút bên dưới tiêu đề
        # ------------------------------------------------------------------------------------------------------------------- 
        # Nút huấn luyện dữ liệu 1
        std_img_btn=Image.open(r"C:\Users\LENOVO\PycharmProjects\Python-FYP-Face-Recognition-Attendence-System-master\Python-FYP-Face-Recognition-Attendence-System-master\Images_GUI\t_btn1.png")
        std_img_btn=std_img_btn.resize((180,180))
        self.std_img1=ImageTk.PhotoImage(std_img_btn)

        std_b1 = Button(bg_img,command=self.train_classifier,image=self.std_img1,cursor="hand2")
        std_b1.place(x=600,y=170,width=180,height=180)

        std_b1_1 = Button(bg_img,command=self.train_classifier,text="Train Dataset",cursor="hand2",font=("tahoma",15,"bold"),bg="white",fg="navyblue")
        std_b1_1.place(x=600,y=350,width=180,height=45)

    # ==================Tạo hàm huấn luyện===================
    # def train_classifier(self):
    #     data_dir=("data_img")
    #     path=[os.path.join(data_dir,file) for file in os.listdir(data_dir)]
    #
    #     faces=[]
    #     ids=[]
    #
    #     for image in path:
    #         img=Image.open(image).convert('L') # conver in gray scale
    #         imageNp = np.array(img,'uint8')
    #         id=int(os.path.split(image)[1].split('.')[1])
    #
    #         faces.append(imageNp)
    #         ids.append(id)
    #
    #         cv2.imshow("Training",imageNp)
    #         cv2.waitKey(1)==13
    #
    #     ids=np.array(ids)
    #
    #     #=================Huấn luyện bộ nhận dạng=============
    #     clf= cv2.face.LBPHFaceRecognizer_create()
    #     clf.train(faces,ids)
    #     clf.write("clf.xml")
    #
    #     cv2.destroyAllWindows()
    #     messagebox.showinfo("Result","Training Dataset Complated!",parent=self.root)
    def train_classifier(self):
        data_dir = "data_img"
        paths = [os.path.join(data_dir, f) for f in os.listdir(data_dir) if f.endswith('.jpg')]  # Chỉ lấy file .jpg

        faces = []
        ids = []

        for image in paths:
            img = Image.open(image).convert('L')  # Chuyển ảnh sang grayscale
            img_np = np.array(img, 'uint8')

            # Lấy ID từ tên file (định dạng: stdudent.id.stt.jpg)
            try:
                id = int(os.path.split(image)[1].split('.')[1])
                faces.append(img_np)
                ids.append(id)
            except Exception as e:
                print(f"Bỏ qua file không hợp lệ: {image} - Lỗi: {str(e)}")
                continue

            cv2.imshow("Training", img_np)
            if cv2.waitKey(1) == 13:
                break

        ids = np.array(ids)

        # Train classifier
        clf = cv2.face.LBPHFaceRecognizer_create()
        clf.train(faces, ids)
        clf.write("clf.xml")

        cv2.destroyAllWindows()
        messagebox.showinfo("Result", f"Đã train xong {len(faces)} ảnh!", parent=self.root)




if __name__ == "__main__":
    root=Tk()
    obj=Train(root)
    root.mainloop()