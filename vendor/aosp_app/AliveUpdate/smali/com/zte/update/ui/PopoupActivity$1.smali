.class Lcom/zte/update/ui/PopoupActivity$1;
.super Ljava/lang/Object;
.source "PopoupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/ui/PopoupActivity;->displayAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/ui/PopoupActivity;


# direct methods
.method constructor <init>(Lcom/zte/update/ui/PopoupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zte/update/ui/PopoupActivity$1;->this$0:Lcom/zte/update/ui/PopoupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/update/mgr/ServiceTasks;->startSelfCheck(I)V

    .line 135
    return-void
.end method
