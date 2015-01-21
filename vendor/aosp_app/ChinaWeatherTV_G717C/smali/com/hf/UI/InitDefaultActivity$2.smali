.class Lcom/hf/UI/InitDefaultActivity$2;
.super Ljava/lang/Object;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/InitDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$2;->this$0:Lcom/hf/UI/InitDefaultActivity;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 166
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 163
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$2;->this$0:Lcom/hf/UI/InitDefaultActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/hf/UI/InitDefaultActivity;->queryCity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/hf/UI/InitDefaultActivity;->access$2(Lcom/hf/UI/InitDefaultActivity;Ljava/lang/String;)V

    .line 158
    return-void
.end method
