.class public Lcom/mediatek/mms/ipmessage/ResourceManager;
.super Landroid/content/ContextWrapper;
.source "ResourceManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/ResourceManager;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/ResourceManager;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getRawResource(I)Ljava/io/InputStream;
    .locals 1
    .parameter "id"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSingleString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public varargs getSingleString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "id"
    .parameter "formatArgs"

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method
