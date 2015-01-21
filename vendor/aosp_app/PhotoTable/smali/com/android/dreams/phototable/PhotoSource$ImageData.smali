.class public Lcom/android/dreams/phototable/PhotoSource$ImageData;
.super Ljava/lang/Object;
.source "PhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageData"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public orientation:I

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoSource;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter "longSide"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource$ImageData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v0, p0, p1}, Lcom/android/dreams/phototable/PhotoSource;->getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
