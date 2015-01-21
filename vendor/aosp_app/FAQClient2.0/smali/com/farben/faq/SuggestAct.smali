.class public Lcom/farben/faq/SuggestAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private j:Landroid/app/Dialog;

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/farben/faq/SuggestAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/SuggestAct;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/farben/faq/SuggestAct;->k:I

    iput-boolean v0, p0, Lcom/farben/faq/SuggestAct;->l:Z

    iput-boolean v0, p0, Lcom/farben/faq/SuggestAct;->m:Z

    return-void
.end method

.method private static a(Landroid/widget/EditText;Ljava/lang/String;ZI)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, -0x3c403f

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sput-object v2, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    sput-object v2, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const v0, -0xbbbbbc

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    const v2, -0xbbbbbc

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest_phonemail"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "suggest_suggest"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const v10, -0x3c403f

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/16 v9, 0xbb8

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/farben/faq/SuggestAct;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "suggest_suggest"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "suggest_suggest"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "suggest_phonemail"

    invoke-static {v4}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v0, v5

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z0-9A-Z]{2,}$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v0, "suggest_suggest_check_error"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    const-string v4, "^[0-9]\\d*$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v0, "suggest_suggest_check_error"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    move-object v4, v0

    iput-boolean v2, p0, Lcom/farben/faq/SuggestAct;->l:Z

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    const v7, 0x7f02000c

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    const v7, 0x7f020032

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/farben/faq/SuggestAct;->m:Z

    if-nez v0, :cond_7

    new-instance v0, Landroid/app/Dialog;

    const/high16 v7, 0x7f06

    invoke-direct {v0, p0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->j:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/farben/faq/SuggestAct;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f030013

    invoke-virtual {v0, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f080063

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v8, "suggest_action_img"

    invoke-static {v8}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->j:Landroid/app/Dialog;

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v7, "contract"

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "msgtype"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msgcontent"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xf42b0

    invoke-static {v0, p0, v1}, Lcom/farben/faq/common/e;->a(Ljava/util/Map;Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u54cd\u5e94\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    const-string v0, "suggest_actionok"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_8
    invoke-virtual {p0}, Lcom/farben/faq/SuggestAct;->onBackPressed()V

    iput-boolean v3, p0, Lcom/farben/faq/SuggestAct;->l:Z

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    sput-object v5, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    sput-object v5, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setTextColor(I)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "suggest_actionfailed"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :sswitch_3
    iget-boolean v0, p0, Lcom/farben/faq/SuggestAct;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/farben/faq/SuggestAct;->onBackPressed()V

    goto/16 :goto_0

    :cond_a
    move v1, v3

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08009a -> :sswitch_0
        0x7f08009c -> :sswitch_1
        0x7f0800a3 -> :sswitch_2
        0x7f0800a4 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xe

    const v2, -0xbbbbbc

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/farben/faq/common/d;->a:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    const v0, 0x3ebd70a4

    sget v1, Lcom/farben/faq/common/d;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/farben/faq/SuggestAct;->k:I

    :goto_0
    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->setContentView(I)V

    const-string v0, "common_suggest"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "suggest_type"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->e:Landroid/widget/TextView;

    const-string v1, "suggest_type_01"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->e:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->f:Landroid/widget/TextView;

    const-string v1, "suggest_type_02"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->f:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "suggest_desc"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    sget-object v0, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    sget-object v1, Lcom/farben/faq/common/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    sget-object v0, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/farben/faq/common/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    const-string v1, "suggest_action"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->g:Landroid/widget/Button;

    iget v1, p0, Lcom/farben/faq/SuggestAct;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/farben/faq/SuggestAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    const-string v1, "common_return"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->h:Landroid/widget/Button;

    iget v1, p0, Lcom/farben/faq/SuggestAct;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    return-void

    :cond_0
    const/16 v0, 0xa0

    iput v0, p0, Lcom/farben/faq/SuggestAct;->k:I

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    const-string v1, "suggest_phonemail"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    const-string v1, "suggest_suggest"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, Lcom/farben/faq/common/a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->c:Landroid/widget/EditText;

    const-string v1, "suggest_phonemail"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcom/farben/faq/SuggestAct;->a(Landroid/widget/EditText;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/farben/faq/SuggestAct;->d:Landroid/widget/EditText;

    const-string v1, "suggest_suggest"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/farben/faq/SuggestAct;->a(Landroid/widget/EditText;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0800a1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1, p0}, Lcom/farben/faq/common/a;->a(Landroid/view/MenuItem;Landroid/content/Context;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/SuggestAct;->m:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
