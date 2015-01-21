.class public Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;
.super Landroid/os/Binder;
.source "MultiChoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/service/MultiChoiceService;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/mediatek/contacts/list/service/MultiChoiceService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    return-object v0
.end method
