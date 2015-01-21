.class public Lcom/sohu/inputmethod/settings/FeedBackActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;


# static fields
.field private static a:I

.field public static a:Z


# instance fields
.field private a:Lals;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/EditText;

.field private a:Landroid/widget/Toast;

.field private a:Lawa;

.field private a:Ljava/lang/String;

.field private a:Lsg;

.field private b:Landroid/widget/EditText;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x1f5

    sput v0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:I

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lacx;

    invoke-direct {v0, p0}, Lacx;-><init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    .line 248
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lals;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lals;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Lals;)Lals;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lals;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lawa;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lsg;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lsg;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Lawa;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    .line 208
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Lawa;->setIcon(I)V

    .line 210
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lawa;->setMessage(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lawa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawa;->setCancelable(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 276
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 277
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    .line 281
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/FeedBackActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/FeedBackActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 242
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 243
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 244
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 245
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->requestWindowFeature(I)Z

    .line 132
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->setContentView(I)V

    .line 133
    const v0, 0x7f0700b5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/EditText;

    .line 135
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 136
    const/4 v1, 0x0

    new-instance v2, Ladb;

    sget v3, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:I

    invoke-direct {v2, p0, v3}, Ladb;-><init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;I)V

    aput-object v2, v0, v1

    .line 137
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    const v0, 0x7f0700b7

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b:Landroid/widget/EditText;

    .line 140
    const v0, 0x7f0700b8

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Button;

    new-instance v1, Lada;

    invoke-direct {v1, p0}, Lada;-><init>(Lcom/sohu/inputmethod/settings/FeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    sput-boolean v4, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Z

    .line 183
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    const v0, 0x7f0700b2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 190
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lals;

    .line 191
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/Button;

    .line 192
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Landroid/widget/EditText;

    .line 193
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->b:Landroid/widget/EditText;

    .line 194
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Z

    .line 195
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 287
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->finish()V

    .line 290
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onUserLeaveHint()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "FeedBackActivity"

    const-string v1, "[[onUserLeaveHint]]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/FeedBackActivity;->a:Lsg;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()V

    .line 203
    :cond_0
    return-void
.end method
