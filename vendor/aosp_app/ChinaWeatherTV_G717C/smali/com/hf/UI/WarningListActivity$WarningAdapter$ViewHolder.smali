.class Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "WarningListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/WarningListActivity$WarningAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/WarningListActivity$WarningAdapter;

.field warningImage:Landroid/widget/ImageView;

.field warningName:Landroid/widget/TextView;

.field warningTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/hf/UI/WarningListActivity$WarningAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/hf/UI/WarningListActivity$WarningAdapter$ViewHolder;->this$1:Lcom/hf/UI/WarningListActivity$WarningAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
