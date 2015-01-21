.class public interface abstract Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;
.super Ljava/lang/Object;
.source "IMmsMultiDeleteAndForward.java"


# virtual methods
.method public abstract clearBodyandAddressList()V
.end method

.method public abstract getAddress(J)Ljava/lang/String;
.end method

.method public abstract getBody(J)Ljava/lang/String;
.end method

.method public abstract getBoxType(J)I
.end method

.method public abstract init(Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;)V
.end method

.method public abstract initBodyandAddress()V
.end method

.method public abstract isSupportForward()Z
.end method

.method public abstract onMultiforwardItemSelected()Z
.end method

.method public abstract setBodyandAddress(Landroid/database/Cursor;IIILjava/lang/String;J)V
.end method

.method public abstract setForwardMenuEnabled(Z)V
.end method
