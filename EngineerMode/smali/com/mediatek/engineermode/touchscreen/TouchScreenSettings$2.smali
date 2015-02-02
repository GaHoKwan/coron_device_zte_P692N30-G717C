.class Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$2;
.super Ljava/lang/Object;
.source "TouchScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings$2;->this$0:Lcom/mediatek/engineermode/touchscreen/TouchScreenSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 143
    return-void
.end method
