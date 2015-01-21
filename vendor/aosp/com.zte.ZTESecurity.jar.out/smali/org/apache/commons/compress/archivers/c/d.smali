.class public Lorg/apache/commons/compress/archivers/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/compress/archivers/c/e;


# instance fields
.field private eu:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/c/g;->d([BI)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/d;->eu:Z

    return-void
.end method


# virtual methods
.method public aw()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/c/d;->eu:Z

    return v0
.end method
