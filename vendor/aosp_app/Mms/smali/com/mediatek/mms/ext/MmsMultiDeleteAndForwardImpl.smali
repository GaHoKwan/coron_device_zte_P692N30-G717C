.class public Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;
.super Landroid/content/ContextWrapper;
.source "MmsMultiDeleteAndForwardImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsMultiDeleteAndForwardImpl"


# instance fields
.field private mBodyandAddressItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;

    .line 75
    return-void
.end method


# virtual methods
.method public clearBodyandAddressList()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    :cond_0
    return-void
.end method

.method public getAddress(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;

    iget-object v0, v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mAddress:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBody(J)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;

    iget-object v0, v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mBody:Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoxType(J)I
    .locals 2
    .parameter "id"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;

    iget v0, v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;->mBoxType:I

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getHost()Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mHost:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;

    .line 79
    return-void
.end method

.method public initBodyandAddress()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    .line 119
    return-void
.end method

.method public isSupportForward()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiforwardItemSelected()Z
    .locals 2

    .prologue
    .line 85
    const-string v0, "Mms/MmsMultiDeleteAndForwardImpl"

    const-string v1, "onMultiforwardItemSelected  "

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->getHost()Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;->prepareToForwardMessage()V

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public setBodyandAddress(Landroid/database/Cursor;IIILjava/lang/String;J)V
    .locals 7
    .parameter "mcursor"
    .parameter "mColumnSmsAddress"
    .parameter "mColumnSmsBody"
    .parameter "mColumnBoxId"
    .parameter "mtype"
    .parameter "msgId"

    .prologue
    .line 96
    const-string v4, "mms"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, mAddress:Ljava/lang/String;
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, mBody:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 101
    .local v1, boxType:I
    const-string v4, "Mms/MmsMultiDeleteAndForwardImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initListMap mAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mBody"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", boxid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;-><init>(Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .local v0, ba:Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl$BodyandAddress;
    iget-object v4, p0, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;->mBodyandAddressItem:Ljava/util/Map;

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setForwardMenuEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 108
    return-void
.end method
