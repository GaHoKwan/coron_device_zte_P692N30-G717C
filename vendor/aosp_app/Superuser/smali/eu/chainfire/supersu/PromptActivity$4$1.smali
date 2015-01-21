.class Leu/chainfire/supersu/PromptActivity$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/PromptActivity$4;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity$4;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ˮ͈(Leu/chainfire/supersu/PromptActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 310
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ȃ(Leu/chainfire/supersu/PromptActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->鷭(Leu/chainfire/supersu/PromptActivity;I)V

    .line 311
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->Ą(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "eu.chainfire.supersu.extra.saved_counter"

    iget-object v2, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v2}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v2

    invoke-static {v2}, Leu/chainfire/supersu/PromptActivity;->ȃ(Leu/chainfire/supersu/PromptActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ȃ(Leu/chainfire/supersu/PromptActivity;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->ą(Leu/chainfire/supersu/PromptActivity;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 316
    div-int/lit8 v3, v4, 0x3c

    .line 317
    rem-int/lit8 v0, v4, 0x3c

    .line 318
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    if-lez v3, :cond_1

    .line 320
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->Ć(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ȃ(Leu/chainfire/supersu/PromptActivity;)I

    move-result v0

    if-nez v0, :cond_4

    .line 326
    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ć(Leu/chainfire/supersu/PromptActivity;)V

    .line 327
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->ˮ͍(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    iget-boolean v1, v1, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->鷭(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->櫯(Leu/chainfire/supersu/PromptActivity;Z)V

    .line 328
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->ˮ͍(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    iget-boolean v1, v1, Leu/chainfire/supersu/Settings$App;->櫯:Z

    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->ˮ͈(Leu/chainfire/supersu/PromptActivity;Z)V

    .line 329
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ˮ͍(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->櫯:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->ˮ͍(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->ȃ()V

    .line 330
    :cond_3
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->鷭:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->鷭(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->岱(Leu/chainfire/supersu/PromptActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 335
    :catch_0
    :cond_4
    return-void
.end method
