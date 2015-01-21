.class Lcom/hf/UI/CityActivity$4;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->showGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;

.field private final synthetic val$guide_layout:Landroid/widget/LinearLayout;

.field private final synthetic val$preference:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Landroid/widget/LinearLayout;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$4;->this$0:Lcom/hf/UI/CityActivity;

    iput-object p2, p0, Lcom/hf/UI/CityActivity$4;->val$guide_layout:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/hf/UI/CityActivity$4;->val$preference:Landroid/content/SharedPreferences;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hf/UI/CityActivity$4$1;

    iget-object v2, p0, Lcom/hf/UI/CityActivity$4;->val$preference:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/hf/UI/CityActivity$4$1;-><init>(Lcom/hf/UI/CityActivity$4;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 335
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 337
    iget-object v0, p0, Lcom/hf/UI/CityActivity$4;->val$guide_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 338
    return-void
.end method
