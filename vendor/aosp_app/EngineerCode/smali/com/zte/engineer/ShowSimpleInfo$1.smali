.class Lcom/zte/engineer/ShowSimpleInfo$1;
.super Ljava/lang/Object;
.source "ShowSimpleInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/ShowSimpleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/ShowSimpleInfo;


# direct methods
.method constructor <init>(Lcom/zte/engineer/ShowSimpleInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/zte/engineer/ShowSimpleInfo$1;->this$0:Lcom/zte/engineer/ShowSimpleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo$1;->this$0:Lcom/zte/engineer/ShowSimpleInfo;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 306
    iget-object v0, p0, Lcom/zte/engineer/ShowSimpleInfo$1;->this$0:Lcom/zte/engineer/ShowSimpleInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 307
    return-void
.end method
