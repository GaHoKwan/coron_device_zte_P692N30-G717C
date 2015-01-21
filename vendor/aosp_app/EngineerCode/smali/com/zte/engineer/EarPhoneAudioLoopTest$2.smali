.class Lcom/zte/engineer/EarPhoneAudioLoopTest$2;
.super Ljava/lang/Object;
.source "EarPhoneAudioLoopTest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/EarPhoneAudioLoopTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/EarPhoneAudioLoopTest;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/zte/engineer/EarPhoneAudioLoopTest$2;->this$0:Lcom/zte/engineer/EarPhoneAudioLoopTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    return-void
.end method
