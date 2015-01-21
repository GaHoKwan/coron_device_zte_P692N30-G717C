.class public Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;
.super Landroid/os/Binder;
.source "FileManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/service/FileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/service/FileManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/filemanager/service/FileManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;->this$0:Lcom/mediatek/filemanager/service/FileManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceInstance()Lcom/mediatek/filemanager/service/FileManagerService;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/mediatek/filemanager/service/FileManagerService$ServiceBinder;->this$0:Lcom/mediatek/filemanager/service/FileManagerService;

    return-object v0
.end method
