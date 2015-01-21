.class Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;
.super Ljava/lang/Thread;
.source "BipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/bip/BipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseQueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/bip/BipService;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/bip/BipService;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 255
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 259
    const-string v0, "BipService"

    const-string v1, "Database Query Thread"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v6, p0, Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    iget-object v0, p0, Lcom/mediatek/bluetooth/bip/BipService$DatabaseQueryThread;->this$0:Lcom/mediatek/bluetooth/bip/BipService;

    #getter for: Lcom/mediatek/bluetooth/bip/BipService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$100(Lcom/mediatek/bluetooth/bip/BipService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/bluetooth/share/BluetoothShareTask$BluetoothShareTaskMetaData;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "type between ? and ? AND state = ?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v7, 0x14

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/16 v5, 0x1d

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "creation"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    #setter for: Lcom/mediatek/bluetooth/bip/BipService;->mCursor:Landroid/database/Cursor;
    invoke-static {v6, v0}, Lcom/mediatek/bluetooth/bip/BipService;->access$002(Lcom/mediatek/bluetooth/bip/BipService;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 268
    return-void
.end method
