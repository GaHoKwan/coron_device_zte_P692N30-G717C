.class public Lcom/android/contacts/ext/IccCardExtension;
.super Ljava/lang/Object;
.source "IccCardExtension.java"


# static fields
.field public static final KEY_ICC_COLOR_ID:Ljava/lang/String; = "key_color_id"

.field public static final KEY_IS_DARK_THEME:Ljava/lang/String; = "key_dark_theme"

.field public static final KEY_IS_ICC_CONTACT_SDN:Ljava/lang/String; = "key_is_sdn"

.field public static final KEY_PHOTO_ID:Ljava/lang/String; = "key_photo_id"

.field public static final KEY_PHOTO_URI:Ljava/lang/String; = "key_photo_uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 2
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawableBySimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "simInfo"
    .parameter "commd"

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method
