.class Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$1;
.super Ljava/lang/Object;
.source "ChooseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$2$1;->this$1:Lcom/mediatek/appwidget/worldclock/ChooseActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 384
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 385
    return-void
.end method
