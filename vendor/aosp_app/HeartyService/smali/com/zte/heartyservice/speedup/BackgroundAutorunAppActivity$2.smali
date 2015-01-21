.class Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$2;
.super Ljava/lang/Object;
.source "BackgroundAutorunAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;->showTipDlg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity$2;->this$0:Lcom/zte/heartyservice/speedup/BackgroundAutorunAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 354
    return-void
.end method
