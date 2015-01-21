.class Lcom/mediatek/engineermode/memory/NandFlash$1;
.super Ljava/lang/Object;
.source "NandFlash.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/memory/NandFlash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/memory/NandFlash;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/memory/NandFlash;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/engineermode/memory/NandFlash$1;->this$0:Lcom/mediatek/engineermode/memory/NandFlash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$1;->this$0:Lcom/mediatek/engineermode/memory/NandFlash;

    #setter for: Lcom/mediatek/engineermode/memory/NandFlash;->mTabId:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/mediatek/engineermode/memory/NandFlash;->access$002(Lcom/mediatek/engineermode/memory/NandFlash;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/mediatek/engineermode/memory/NandFlash$1;->this$0:Lcom/mediatek/engineermode/memory/NandFlash;

    #calls: Lcom/mediatek/engineermode/memory/NandFlash;->showTabContent()V
    invoke-static {v0}, Lcom/mediatek/engineermode/memory/NandFlash;->access$100(Lcom/mediatek/engineermode/memory/NandFlash;)V

    .line 100
    return-void
.end method
