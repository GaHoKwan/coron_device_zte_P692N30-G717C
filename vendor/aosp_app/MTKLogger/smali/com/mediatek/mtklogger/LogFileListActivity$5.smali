.class Lcom/mediatek/mtklogger/LogFileListActivity$5;
.super Ljava/lang/Object;
.source "LogFileListActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;->initLogItemList(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFileListActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$5;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;)I
    .locals 2
    .parameter "logFileItem1"
    .parameter "logFileItem2"

    .prologue
    .line 258
    invoke-virtual {p1}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 255
    check-cast p1, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .end local p1
    check-cast p2, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/mtklogger/LogFileListActivity$5;->compare(Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;)I

    move-result v0

    return v0
.end method
