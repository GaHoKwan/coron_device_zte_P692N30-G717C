.class public Lcom/android/dreams/phototable/PhotoSource$AlbumData;
.super Ljava/lang/Object;
.source "PhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumData"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoSource;

.field public thumbnailUrl:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public updated:J


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoSource;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->this$0:Lcom/android/dreams/phototable/PhotoSource;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, type:Ljava/lang/String;
    const-string v1, "PhotoTable.PhotoSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/PhotoSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method
