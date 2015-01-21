.class Lcom/zte/engineer/ChiperTest$1;
.super Ljava/lang/Object;
.source "ChiperTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/ChiperTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/ChiperTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/ChiperTest;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zte/engineer/ChiperTest$1;->this$0:Lcom/zte/engineer/ChiperTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/engineer/ChiperTest$1;->this$0:Lcom/zte/engineer/ChiperTest;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 62
    return-void
.end method
