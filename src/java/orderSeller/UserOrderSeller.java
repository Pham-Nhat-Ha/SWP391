/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package orderSeller;

/**
 *
 * @author 84348
 */
public class UserOrderSeller {
    public String customerName;
        public String address;
    public String phoneNumber;
    public String status;
    public String note;
    public String deliveryDate;
    public String sellerID;

    public UserOrderSeller() {
    }

    public UserOrderSeller(String customerName, String address, String phoneNumber, String status, String note, String deliveryDate, String sellerID) {
        this.customerName = customerName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.note = note;
        this.deliveryDate = deliveryDate;
        this.sellerID = sellerID;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(String deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public String getSellerID() {
        return sellerID;
    }

    public void setSellerID(String sellerID) {
        this.sellerID = sellerID;
    }
    
    

}
