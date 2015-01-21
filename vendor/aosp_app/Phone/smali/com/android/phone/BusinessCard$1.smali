.class final Lcom/android/phone/BusinessCard$1;
.super Landroid/os/AsyncTask;
.source "BusinessCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BusinessCard;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cookie:Ljava/lang/Object;

.field final synthetic val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$sInstance:Lcom/android/phone/BusinessCard;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/android/phone/BusinessCard;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    iput-object p2, p0, Lcom/android/phone/BusinessCard$1;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/BusinessCard$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iput p4, p0, Lcom/android/phone/BusinessCard$1;->val$token:I

    iput-object p5, p0, Lcom/android/phone/BusinessCard$1;->val$cookie:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/BusinessCard$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/BusinessCard$1;->val$phoneNumber:Ljava/lang/String;

    aput-object v3, v2, v4

    #calls: Lcom/android/phone/BusinessCard;->queryYpContact([Ljava/lang/String;)[Lcom/android/phone/YpContact;
    invoke-static {v1, v2}, Lcom/android/phone/BusinessCard;->access$000(Lcom/android/phone/BusinessCard;[Ljava/lang/String;)[Lcom/android/phone/YpContact;

    move-result-object v0

    .line 87
    .local v0, contacts:[Lcom/android/phone/YpContact;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lt v1, v5, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    aget-object v2, v0, v4

    #setter for: Lcom/android/phone/BusinessCard;->mQueriedContacts:Lcom/android/phone/YpContact;
    invoke-static {v1, v2}, Lcom/android/phone/BusinessCard;->access$102(Lcom/android/phone/BusinessCard;Lcom/android/phone/YpContact;)Lcom/android/phone/YpContact;

    .line 91
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/BusinessCard$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    .line 96
    iget-object v4, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    invoke-virtual {v4}, Lcom/android/phone/BusinessCard;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, tmp_name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    invoke-virtual {v4}, Lcom/android/phone/BusinessCard;->getCompanyBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/phone/CallerInfo;

    invoke-direct {v1}, Lcom/android/phone/CallerInfo;-><init>()V

    .line 99
    .local v1, ci:Lcom/android/phone/CallerInfo;
    iget-object v4, p0, Lcom/android/phone/BusinessCard$1;->val$sInstance:Lcom/android/phone/BusinessCard;

    invoke-virtual {v4}, Lcom/android/phone/BusinessCard;->getNumberLocation()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    .line 100
    iget-object v4, p0, Lcom/android/phone/BusinessCard$1;->val$phoneNumber:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute ci.geoDescription="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/BusinessCard;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/phone/BusinessCard;->access$200(Ljava/lang/String;)V

    .line 104
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    if-eqz v0, :cond_0

    .line 108
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    iput-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 111
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 114
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iput-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 119
    :cond_1
    iget-object v4, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    iput-boolean v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    .line 124
    :cond_2
    iget-object v4, p0, Lcom/android/phone/BusinessCard$1;->val$listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget v5, p0, Lcom/android/phone/BusinessCard$1;->val$token:I

    iget-object v6, p0, Lcom/android/phone/BusinessCard$1;->val$cookie:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 125
    return-void
.end method
