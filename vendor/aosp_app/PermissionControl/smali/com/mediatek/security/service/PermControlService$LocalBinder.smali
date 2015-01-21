.class public Lcom/mediatek/security/service/PermControlService$LocalBinder;
.super Landroid/os/Binder;
.source "PermControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/service/PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/service/PermControlService;


# direct methods
.method public constructor <init>(Lcom/mediatek/security/service/PermControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/mediatek/security/service/PermControlService$LocalBinder;->this$0:Lcom/mediatek/security/service/PermControlService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/mediatek/security/service/PermControlService;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/mediatek/security/service/PermControlService$LocalBinder;->this$0:Lcom/mediatek/security/service/PermControlService;

    return-object v0
.end method
