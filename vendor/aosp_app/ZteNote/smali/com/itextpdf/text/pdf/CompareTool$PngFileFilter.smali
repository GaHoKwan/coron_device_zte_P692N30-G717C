.class Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;
.super Ljava/lang/Object;
.source "CompareTool.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PngFileFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itextpdf/text/pdf/CompareTool;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/pdf/CompareTool;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;->this$0:Lcom/itextpdf/text/pdf/CompareTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "pathname"

    .prologue
    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, ap:Ljava/lang/String;
    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 232
    .local v1, b1:Z
    const-string v3, "cmp_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 233
    .local v2, b2:Z
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CompareTool$PngFileFilter;->this$0:Lcom/itextpdf/text/pdf/CompareTool;

    #getter for: Lcom/itextpdf/text/pdf/CompareTool;->outPdfName:Ljava/lang/String;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/CompareTool;->access$000(Lcom/itextpdf/text/pdf/CompareTool;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
