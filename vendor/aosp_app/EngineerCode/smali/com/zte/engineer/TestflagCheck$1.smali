.class Lcom/zte/engineer/TestflagCheck$1;
.super Ljava/lang/Object;
.source "TestflagCheck.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/TestflagCheck;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TestflagCheck;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TestflagCheck;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zte/engineer/TestflagCheck$1;->this$0:Lcom/zte/engineer/TestflagCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/zte/engineer/TestflagCheck$1;->this$0:Lcom/zte/engineer/TestflagCheck;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 113
    return-void
.end method