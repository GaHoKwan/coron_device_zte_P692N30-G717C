.class Lcom/zte/engineer/CamerasTest$4;
.super Ljava/lang/Object;
.source "CamerasTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/CamerasTest;->showErrorAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/CamerasTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/CamerasTest;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/zte/engineer/CamerasTest$4;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/zte/engineer/CamerasTest$4;->this$0:Lcom/zte/engineer/CamerasTest;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 331
    return-void
.end method
