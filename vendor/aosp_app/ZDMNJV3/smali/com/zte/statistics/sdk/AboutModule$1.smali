.class Lcom/zte/statistics/sdk/AboutModule$1;
.super Ljava/lang/Object;
.source "AboutModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/statistics/sdk/AboutModule;->doShow(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/statistics/sdk/AboutModule;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/zte/statistics/sdk/AboutModule;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/statistics/sdk/AboutModule$1;->this$0:Lcom/zte/statistics/sdk/AboutModule;

    iput-object p2, p0, Lcom/zte/statistics/sdk/AboutModule$1;->val$activity:Landroid/app/Activity;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 41
    .local v0, id:I
    iget-object v1, p0, Lcom/zte/statistics/sdk/AboutModule$1;->val$activity:Landroid/app/Activity;

    const-string v2, "zte_button_about_okay"

    invoke-static {v1, v2}, Lcom/zte/statistics/sdk/util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/zte/statistics/sdk/AboutModule$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 44
    :cond_0
    return-void
.end method
