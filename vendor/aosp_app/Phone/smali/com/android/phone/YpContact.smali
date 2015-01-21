.class public Lcom/android/phone/YpContact;
.super Ljava/lang/Object;
.source "YpContact.java"


# instance fields
.field private datasource:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private mPhotoBitmap:Landroid/graphics/Bitmap;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private photo:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "name"
    .parameter "photo"
    .parameter "datasource"
    .parameter "location"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/phone/YpContact;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-object p4, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/android/phone/YpContact;->location:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "name"
    .parameter "photo"
    .parameter "datasource"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/android/phone/YpContact;->photo:[B

    .line 26
    iput-object p4, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "number"
    .parameter "name"
    .parameter "photo"
    .parameter "datasource"
    .parameter "location"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/phone/YpContact;->photo:[B

    .line 42
    iput-object p4, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/android/phone/YpContact;->location:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getDatasource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/YpContact;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()[B
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/YpContact;->photo:[B

    return-object v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/YpContact;->mPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setDatasource(Ljava/lang/String;)V
    .locals 0
    .parameter "datasource"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/phone/YpContact;->location:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPhoto([B)V
    .locals 0
    .parameter "photo"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/YpContact;->photo:[B

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusinessCard [number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/YpContact;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/YpContact;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/YpContact;->photo:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", datasource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/YpContact;->datasource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
