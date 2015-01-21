.class public Lcom/mediatek/filemanager/utils/LongStringUtils;
.super Ljava/lang/Object;
.source "LongStringUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/mediatek/filemanager/utils/LongStringUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/filemanager/utils/LongStringUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeOutLongString(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    const/4 v1, 0x1

    .line 16
    if-nez p0, :cond_0

    .line 17
    sget-object v0, Lcom/mediatek/filemanager/utils/LongStringUtils;->TAG:Ljava/lang/String;

    const-string v1, "#adjustWithLongString(),the view is to be set is null"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void

    .line 20
    :cond_0
    instance-of v0, p0, Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 21
    sget-object v0, Lcom/mediatek/filemanager/utils/LongStringUtils;->TAG:Ljava/lang/String;

    const-string v1, "#adjustWithLongString(),the view instance is not right,execute failed!"

    invoke-static {v0, v1}, Lcom/mediatek/filemanager/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method
