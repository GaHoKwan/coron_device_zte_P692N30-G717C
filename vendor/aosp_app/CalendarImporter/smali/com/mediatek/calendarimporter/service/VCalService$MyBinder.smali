.class public Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;
.super Landroid/os/Binder;
.source "VCalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendarimporter/service/VCalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/service/VCalService;


# direct methods
.method public constructor <init>(Lcom/mediatek/calendarimporter/service/VCalService;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;->this$0:Lcom/mediatek/calendarimporter/service/VCalService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/mediatek/calendarimporter/service/VCalService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;->this$0:Lcom/mediatek/calendarimporter/service/VCalService;

    return-object v0
.end method
