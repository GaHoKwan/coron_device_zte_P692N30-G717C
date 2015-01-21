.class final Lorg/apache/tools/zip/ZipFile$NameAndComment;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NameAndComment"
.end annotation


# instance fields
.field private final comment:[B

.field private final name:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .parameter "name"
    .parameter "comment"

    .prologue
    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    .line 732
    iput-object p2, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    .line 733
    return-void
.end method

.method constructor <init>([B[BLorg/apache/tools/zip/ZipFile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/zip/ZipFile$NameAndComment;-><init>([B[B)V

    return-void
.end method

.method static access$400(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 727
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->name:[B

    return-object v0
.end method

.method static access$500(Lorg/apache/tools/zip/ZipFile$NameAndComment;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 727
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$NameAndComment;->comment:[B

    return-object v0
.end method
