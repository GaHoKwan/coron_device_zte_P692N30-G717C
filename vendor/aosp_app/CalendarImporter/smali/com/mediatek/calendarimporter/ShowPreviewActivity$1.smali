.class Lcom/mediatek/calendarimporter/ShowPreviewActivity$1;
.super Ljava/lang/Object;
.source "ShowPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ShowPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$1;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    return-void
.end method
