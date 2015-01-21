.class Lcom/zte/engineer/NetWorkType$2;
.super Ljava/lang/Object;
.source "NetWorkType.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/NetWorkType;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/NetWorkType;


# direct methods
.method constructor <init>(Lcom/zte/engineer/NetWorkType;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/zte/engineer/NetWorkType$2;->this$0:Lcom/zte/engineer/NetWorkType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/engineer/NetWorkType$2;->this$0:Lcom/zte/engineer/NetWorkType;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 120
    return-void
.end method
