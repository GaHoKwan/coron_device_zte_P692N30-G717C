.class Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;
.super Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
.source "ImageVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/ImageVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryImageVideoItem"
.end annotation


# instance fields
.field public bitMap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/ImageVideoActivity$EncryImageVideoItem;-><init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    return-void
.end method