.class Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;
.super Ljava/lang/Object;
.source "SDLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/sdtest/SDLogActivity;->checkSDCard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 285
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 286
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;->this$0:Lcom/mediatek/engineermode/sdtest/SDLogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 287
    return-void
.end method
