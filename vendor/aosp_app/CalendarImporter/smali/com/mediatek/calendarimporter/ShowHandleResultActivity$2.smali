.class Lcom/mediatek/calendarimporter/ShowHandleResultActivity$2;
.super Ljava/lang/Object;
.source "ShowHandleResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ShowHandleResultActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ShowHandleResultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowHandleResultActivity$2;->this$0:Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    return-void
.end method
