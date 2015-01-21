.class public final Laaq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/StringBuilder;


# instance fields
.field private a:I

.field private a:Labh;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/app/ProgressDialog;

.field private a:Landroid/content/BroadcastReceiver;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/RelativeLayout;

.field a:Landroid/widget/Toast;

.field private a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private a:Ljava/lang/String;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/List;

.field private a:Ljava/util/Map;

.field private a:Z

.field private a:[C

.field private b:I

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/content/BroadcastReceiver;

.field private b:Landroid/content/Context;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:I

.field private c:Landroid/app/AlertDialog;

.field private c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private c:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private c:Z

.field private d:Landroid/app/AlertDialog;

.field private d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

.field private d:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private d:Z

.field private e:Landroid/app/AlertDialog;

.field private e:Ljava/util/List;

.field private e:Z

.field private f:Landroid/app/AlertDialog;

.field private f:Z

.field private g:Landroid/app/AlertDialog;

.field private h:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b0077

    const/4 v9, 0x1

    const/16 v3, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v1, p0, Laaq;->a:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Laaq;->a:Ljava/lang/String;

    .line 86
    iput-object v8, p0, Laaq;->a:Landroid/widget/Toast;

    .line 88
    iput-object v8, p0, Laaq;->a:[C

    .line 96
    iput-object v8, p0, Laaq;->a:Landroid/content/Context;

    .line 97
    iput-object v8, p0, Laaq;->b:Landroid/content/Context;

    .line 98
    iput-object v8, p0, Laaq;->a:Landroid/view/LayoutInflater;

    .line 99
    iput-object v8, p0, Laaq;->a:Landroid/view/View;

    .line 117
    iput-boolean v1, p0, Laaq;->a:Z

    .line 118
    iput-boolean v1, p0, Laaq;->b:Z

    .line 119
    iput-boolean v1, p0, Laaq;->c:Z

    .line 121
    iput-boolean v1, p0, Laaq;->d:Z

    .line 123
    iput-boolean v1, p0, Laaq;->e:Z

    .line 124
    iput-boolean v1, p0, Laaq;->f:Z

    .line 126
    const-string v0, ""

    iput-object v0, p0, Laaq;->d:Ljava/lang/String;

    .line 145
    iput-object v8, p0, Laaq;->a:Labh;

    .line 155
    new-instance v0, Laar;

    invoke-direct {v0, p0}, Laar;-><init>(Laaq;)V

    iput-object v0, p0, Laaq;->a:Landroid/os/Handler;

    .line 231
    iput-object p1, p0, Laaq;->a:Landroid/content/Context;

    .line 232
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laaq;->b:Landroid/content/Context;

    .line 233
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laaq;->a:Landroid/view/LayoutInflater;

    .line 234
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    .line 235
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Laaq;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f03000f

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laaq;->a:Landroid/view/View;

    .line 238
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/sogou/scel/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 242
    :cond_0
    const/16 v0, 0xa28

    new-array v0, v0, [C

    iput-object v0, p0, Laaq;->a:[C

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaq;->b:Ljava/util/List;

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaq;->c:Ljava/util/List;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaq;->a:Ljava/util/List;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaq;->d:Ljava/util/List;

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laaq;->a:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laaq;->e:Ljava/util/List;

    .line 250
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences;

    .line 252
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    .line 253
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v2, 0x7f070059

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    .line 255
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v2, 0x7f070053

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Laaq;->a:Landroid/widget/RelativeLayout;

    .line 257
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v2, 0x7f0701ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    .line 259
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v2, 0x7f070058

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    .line 261
    invoke-direct {p0}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->b()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    :goto_0
    invoke-direct {p0}, Laaq;->i()V

    .line 276
    invoke-direct {p0}, Laaq;->p()V

    .line 277
    invoke-direct {p0}, Laaq;->o()V

    .line 278
    invoke-direct {p0}, Laaq;->v()V

    .line 280
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    :cond_1
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 286
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 288
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 289
    iget-object v5, p0, Laaq;->b:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".scel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The item installed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".scel"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laaq;->e(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lafp;->b(Ljava/lang/Boolean;)V

    .line 271
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 293
    :cond_4
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    :cond_5
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 299
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    :cond_6
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    iget-object v3, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 303
    :cond_7
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    iget-object v3, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 305
    iget-object v3, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 309
    :cond_9
    if-eqz p2, :cond_a

    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Laaq;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    invoke-direct {p0}, Laaq;->g()V

    .line 320
    :goto_4
    invoke-direct {p0}, Laaq;->x()V

    .line 321
    return-void

    .line 312
    :cond_a
    iget-boolean v0, p0, Laaq;->c:Z

    if-ne v0, v9, :cond_b

    .line 313
    iput-boolean v1, p0, Laaq;->c:Z

    .line 315
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labr;

    invoke-direct {v1, p0, v8}, Labr;-><init>(Laaq;Laar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    .line 316
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    invoke-direct {p0}, Laaq;->w()V

    goto :goto_4
.end method

.method private a()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 970
    new-instance v1, Ljava/io/File;

    const-string v0, "/sdcard/sogou/scel/"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    .line 972
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 973
    new-instance v0, Labc;

    invoke-direct {v0, p0}, Labc;-><init>(Laaq;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_0
    if-eqz v0, :cond_1

    .line 984
    array-length v0, v0

    .line 986
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Laaq;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Laaq;->a:I

    return v0
.end method

.method static synthetic a(Laaq;)Labh;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Labh;

    return-object v0
.end method

.method static synthetic a(Laaq;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Laaq;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Laaq;->h:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic a(Laaq;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Laaq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laaq;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic a(Laaq;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Laaq;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Laaq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Laaq;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Laaq;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Laaq;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa28

    const/4 v0, 0x0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[getCellInfo]] source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laaq;->e(Ljava/lang/String;)V

    .line 932
    invoke-static {p1}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v2

    move v1, v0

    .line 933
    :goto_0
    if-ge v1, v4, :cond_0

    .line 934
    iget-object v3, p0, Laaq;->a:[C

    aput-char v0, v3, v1

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :cond_0
    iget-object v1, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v1

    iget-object v3, p0, Laaq;->a:[C

    invoke-virtual {v1, v2, v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->getScelInfo([B[C)I

    move-result v1

    aput v1, p2, v0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laaq;->e(Ljava/lang/String;)V

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 941
    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v2, p0, Laaq;->a:[C

    aget-char v2, v2, v0

    if-eqz v2, :cond_1

    .line 942
    iget-object v2, p0, Laaq;->a:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 945
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[[getCellInfo]] info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0xa

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1509
    const/4 v0, 0x2

    if-le v2, v0, :cond_2

    .line 1510
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01bc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1517
    :goto_0
    if-le v2, v6, :cond_0

    .line 1518
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01c0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    :cond_0
    if-le v2, v7, :cond_1

    .line 1521
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01bf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1523
    :cond_1
    if-le v2, v5, :cond_3

    .line 1524
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1532
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_2
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01bc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1528
    :cond_3
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b01be

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method static synthetic a(Laaq;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Laaq;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Laaq;->a:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[[getParsedInfo]] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 955
    const/4 v1, 0x0

    .line 956
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 957
    :cond_0
    :goto_0
    if-ge v1, v3, :cond_1

    .line 958
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 966
    :cond_1
    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 6
    .parameter

    .prologue
    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1538
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 1539
    const-wide/16 v0, 0x0

    .line 1540
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1542
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1543
    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    .line 1545
    :cond_0
    invoke-direct {p0, v2, v3}, Laaq;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 1546
    invoke-direct {p0, v2}, Laaq;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1549
    return-object v2
.end method

.method static synthetic a(Laaq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laaq;I)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Laaq;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 695
    invoke-direct {p0, p1}, Laaq;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 696
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    iget-object v1, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    iget-object v1, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 699
    :cond_0
    sget-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    sget-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->g()Ljava/lang/String;

    move-result-object v1

    .line 701
    if-nez v1, :cond_4

    .line 702
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->j(Ljava/lang/String;)V

    .line 709
    :cond_1
    :goto_0
    iget-object v0, p0, Laaq;->a:Labh;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 711
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 712
    iget-object v0, p0, Laaq;->a:Labh;

    invoke-virtual {v0}, Labh;->notifyDataSetChanged()V

    .line 715
    :cond_2
    invoke-direct {p0}, Laaq;->a()I

    move-result v0

    if-nez v0, :cond_3

    .line 716
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->b(Ljava/lang/Boolean;)V

    .line 718
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 719
    invoke-virtual {p0}, Laaq;->e()V

    .line 721
    :cond_3
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0325

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 727
    :goto_1
    return-void

    .line 704
    :cond_4
    if-eqz v1, :cond_1

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lafp;->j(Ljava/lang/String;)V

    goto :goto_0

    .line 723
    :cond_5
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0324

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    :try_start_0
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 673
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 675
    new-instance v1, Laaz;

    invoke-direct {v1, p0, p3}, Laaz;-><init>(Laaq;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 683
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Laaq;->w()V

    return-void
.end method

.method static synthetic a(Laaq;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->a(I)V

    return-void
.end method

.method static synthetic a(Laaq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laaq;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->a(Z)V

    return-void
.end method

.method private a(Labs;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 404
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p1, Labs;->a:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 407
    iput-object v1, p1, Labs;->a:Landroid/widget/TextView;

    .line 408
    iget-object v0, p1, Labs;->b:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 409
    iput-object v1, p1, Labs;->b:Landroid/widget/TextView;

    .line 410
    iget-object v0, p1, Labs;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 411
    iput-object v1, p1, Labs;->a:Landroid/widget/ImageView;

    .line 412
    iget-object v0, p1, Labs;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 413
    iput-object v1, p1, Labs;->a:Landroid/widget/LinearLayout;

    .line 414
    iget-object v0, p1, Labs;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 415
    iput-object v1, p1, Labs;->a:Landroid/widget/RelativeLayout;

    .line 417
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 392
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Labs;

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labs;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0, v0}, Laaq;->a(Labs;)V

    .line 398
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 401
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Laaq;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1391
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1392
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 644
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 649
    :goto_0
    return v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 3
    .parameter

    .prologue
    .line 597
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 598
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete the cell from SD card = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 604
    const/4 v0, 0x1

    .line 607
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Laaq;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Laaq;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Laaq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Laaq;->d:Z

    return p1
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 520
    const-string v0, ""

    .line 521
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 522
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 523
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 524
    const-string v4, "file"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_0
    :goto_0
    const-string v3, "/sdcard/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 533
    if-ne v3, v5, :cond_1

    const-string v3, "/mnt/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 534
    :cond_1
    if-ne v3, v5, :cond_2

    const-string v3, "/storage/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 535
    :cond_2
    if-eq v3, v5, :cond_4

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-direct {p0}, Laaq;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 542
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const v2, 0x7f0b02ce

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 588
    :goto_1
    return v0

    .line 527
    :cond_3
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 538
    goto :goto_1

    .line 548
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    move v0, v1

    .line 550
    goto :goto_1

    .line 552
    :cond_6
    sget-object v3, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laaq;->a(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_7

    .line 554
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const v3, 0x7f0b034b

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 555
    iput-boolean v2, p0, Laaq;->c:Z

    move v0, v1

    .line 556
    goto :goto_1

    .line 558
    :cond_7
    invoke-direct {p0, v0}, Laaq;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 559
    const-string v1, "The cell is not new"

    invoke-static {v1}, Laaq;->e(Ljava/lang/String;)V

    .line 560
    sget-object v1, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laaq;->b:Ljava/lang/String;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto build the scel file in checkNewCell(false) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->f(Ljava/lang/String;)V

    .line 564
    iput-boolean v2, p0, Laaq;->a:Z

    .line 565
    invoke-direct {p0}, Laaq;->h()V

    move v0, v2

    .line 566
    goto :goto_1

    .line 569
    :cond_8
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ".scel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v2, :cond_9

    .line 572
    :try_start_0
    sget-object v3, Laox;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Laaq;->b:Ljava/lang/String;

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto build the scel file in checkNewCell(true) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laaq;->f(Ljava/lang/String;)V

    .line 576
    iget-object v3, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v3}, Lavj;->a(Landroid/content/Context;)Lavj;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/sogou/scel/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lavj;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Laaq;->a:Z

    .line 583
    invoke-direct {p0}, Laaq;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 584
    goto/16 :goto_1

    .line 585
    :catch_0
    move-exception v0

    :cond_9
    move v0, v1

    .line 588
    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1328
    const-string v0, "check new cell"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1329
    iput-boolean v2, p0, Laaq;->e:Z

    .line 1330
    new-array v0, v2, [I

    .line 1331
    invoke-direct {p0, p1, v0}, Laaq;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 1352
    :goto_0
    return v0

    .line 1334
    :cond_1
    invoke-direct {p0, v0}, Laaq;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1335
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Laaq;->c:Ljava/lang/String;

    .line 1337
    invoke-direct {p0}, Laaq;->n()V

    .line 1339
    iput-boolean v1, p0, Laaq;->e:Z

    .line 1342
    iget-boolean v0, p0, Laaq;->f:Z

    if-ne v0, v2, :cond_2

    .line 1343
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1346
    const-string v0, "delete OK"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1347
    iput-boolean v1, p0, Laaq;->f:Z

    move v0, v1

    .line 1348
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1352
    goto :goto_0
.end method

.method static synthetic b(Laaq;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Laaq;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Laaq;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Laaq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Laaq;->j()V

    return-void
.end method

.method static synthetic b(Laaq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Laaq;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Laaq;->b(Z)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-static {p0}, Laaq;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1400
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1401
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1402
    return-void
.end method

.method private b()Z
    .locals 12

    .prologue
    const v10, 0x7d000

    const/16 v9, 0x1000

    const/16 v11, 0x22

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 991
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1124
    :cond_0
    :goto_0
    return v7

    .line 994
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laaq;->e(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 1002
    :cond_2
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [[B

    move v2, v7

    move v3, v7

    move v4, v7

    .line 1003
    :goto_1
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labq;->a(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 1008
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 1012
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    add-int/2addr v4, v0

    .line 1014
    if-le v3, v0, :cond_3

    .line 1003
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move v3, v0

    .line 1014
    goto :goto_2

    .line 1019
    :cond_4
    add-int v0, v4, v10

    iput v0, p0, Laaq;->b:I

    .line 1020
    add-int v0, v3, v10

    iput v0, p0, Laaq;->c:I

    .line 1021
    new-array v6, v9, [B

    move v0, v7

    .line 1022
    :goto_3
    if-ge v0, v9, :cond_5

    .line 1023
    aput-byte v7, v6, v0

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1025
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((((((((((((( before build "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laox;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )))))))))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The target Bin dir = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laox;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    iget-object v2, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Laaq;->b:I

    iget v4, p0, Laaq;->c:I

    sget-object v5, Laox;->o:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/sohu/inputmethod/engine/IMEInterface;->buildCellDict([[BIIILjava/lang/String;[BZ)I

    move-result v1

    .line 1034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------- return from native ------ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1035
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 1036
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    .line 1038
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 1039
    :goto_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1040
    aget-byte v4, v6, v0

    .line 1041
    add-int/lit8 v5, v0, 0x1

    .line 1042
    if-gtz v4, :cond_7

    .line 1055
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1058
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==========importedFile.size="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1063
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------ the file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " --------"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laaq;->e(Ljava/lang/String;)V

    .line 1064
    const-string v6, "/sdcard/sogou/scel/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v9, ".scel"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    iget-object v6, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1044
    :cond_7
    new-array v9, v4, [B

    move v0, v7

    .line 1045
    :goto_6
    if-ge v0, v4, :cond_8

    .line 1046
    aput-byte v7, v9, v0

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    move v0, v7

    .line 1048
    :goto_7
    if-ge v0, v4, :cond_9

    .line 1049
    add-int v10, v0, v5

    aget-byte v10, v6, v10

    aput-byte v10, v9, v0

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1051
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int v0, v5, v4

    .line 1053
    goto/16 :goto_4

    .line 1071
    :cond_a
    iget-boolean v0, p0, Laaq;->a:Z

    if-ne v0, v8, :cond_b

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto build the scel file in bulidCellBin() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->f(Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01c1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    iget-object v0, p0, Laaq;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v6, 0x7f0b01c3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1085
    iput-boolean v7, p0, Laaq;->a:Z

    .line 1088
    :cond_b
    if-eqz v1, :cond_c

    .line 1089
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v5, 0x7f0b01c4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1093
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b01c5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 1096
    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1097
    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1101
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### cell_installed = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v5, 0x7f0b0077

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1104
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build dict = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1109
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1110
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1111
    iget-object v3, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1114
    :cond_d
    const-string v0, "reinit the engine"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->getInstance(Landroid/content/Context;)Lcom/sohu/inputmethod/engine/IMEInterface;

    move-result-object v0

    .line 1116
    invoke-virtual {v0, v7}, Lcom/sohu/inputmethod/engine/IMEInterface;->release(Z)V

    .line 1117
    invoke-virtual {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->init()V

    .line 1118
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v2, 0x7f0b0076

    invoke-virtual {v0, v2, v8}, Lafp;->a(IZ)V

    .line 1119
    const-string v0, "after reinit the engine"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "((((((((((((( After build "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laox;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )))))))))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^^^^ After build cell bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laox;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    move v7, v8

    .line 1124
    goto/16 :goto_0

    .line 1016
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method

.method static synthetic b(Laaq;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Laaq;->a:Z

    return v0
.end method

.method static synthetic b(Laaq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Laaq;->b:Z

    return p1
.end method

.method static synthetic c(Laaq;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->h:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Laaq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Laaq;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Laaq;->g()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0b03f9

    const/4 v3, 0x0

    .line 1406
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1407
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1408
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1410
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    :cond_0
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1419
    :goto_0
    return-void

    .line 1414
    :cond_1
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b03f9

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v0

    .line 1417
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 1387
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Laaq;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Laaq;->d:Z

    return v0
.end method

.method static synthetic d(Laaq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 1422
    invoke-direct {p0}, Laaq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    invoke-direct {p0, p1}, Laaq;->c(Ljava/lang/String;)V

    .line 1460
    :goto_0
    return-void

    .line 1425
    :cond_0
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1426
    const v1, 0x7f030033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1427
    const v0, 0x7f070119

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1428
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1429
    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2}, Lafp;->a()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1430
    const v3, 0x7f020099

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 1431
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1432
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1433
    const v1, 0x7f0b04a3

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1434
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b0249

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1435
    const/4 v1, -0x1

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v4, 0x7f0b02ab

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laas;

    invoke-direct {v4, p0, p1}, Laas;-><init>(Laaq;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1443
    const/4 v1, -0x2

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v4, 0x7f0b02ae

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laat;

    invoke-direct {v4, p0}, Laat;-><init>(Laaq;)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1449
    new-instance v1, Laau;

    invoke-direct {v1, p0, v0}, Laau;-><init>(Laaq;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1458
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic e(Laaq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 382
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 383
    iget-object v1, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 384
    invoke-direct {p0, v1}, Laaq;->a(Landroid/view/View;)V

    .line 385
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    iput-object v2, p0, Laaq;->a:Landroid/widget/ListView;

    .line 390
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1562
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laaq;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->b(Ljava/lang/Boolean;)V

    .line 510
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 518
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->b(Ljava/lang/Boolean;)V

    .line 515
    iget-object v0, p0, Laaq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Laaq;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 611
    iget-boolean v0, p0, Laaq;->a:Z

    if-ne v0, v2, :cond_0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add the scel file in addcell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x14

    if-le v0, v1, :cond_2

    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 615
    iput-boolean v2, p0, Laaq;->d:Z

    .line 616
    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 624
    :cond_0
    :goto_0
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 626
    :cond_1
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 627
    iget-object v2, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 619
    :cond_2
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_3
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 630
    iget-object v2, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 631
    iget-object v2, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 634
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto build the scel file in addCell() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laaq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->f(Ljava/lang/String;)V

    .line 636
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Labr;-><init>(Laaq;Laar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    .line 637
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 639
    invoke-direct {p0}, Laaq;->w()V

    .line 640
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 653
    const v0, 0x7f07005a

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b00be

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laaq;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 657
    const v0, 0x7f07005b

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b00bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laaq;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 660
    const v0, 0x7f07005c

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b00c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laaq;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    const v0, 0x7f07005d

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laaq;->a:Landroid/content/Context;

    const v3, 0x7f0b00c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Laaq;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private j()V
    .locals 7

    .prologue
    .line 730
    invoke-direct {p0}, Laaq;->n()V

    .line 732
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in createPreScreen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laaq;->e(Ljava/lang/String;)V

    .line 734
    iget-object v2, p0, Laaq;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labp;

    .line 735
    if-eqz v0, :cond_0

    .line 736
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 737
    const-string v3, "title_key"

    iget-object v4, v0, Labp;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    const-string v3, "summary_key"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Laaq;->a:Landroid/content/Context;

    const v6, 0x7f0b01b9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Labp;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 744
    :cond_1
    iget-object v0, p0, Laaq;->a:Labh;

    if-nez v0, :cond_2

    .line 745
    new-instance v0, Labh;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Labh;-><init>(Laaq;Landroid/content/Context;)V

    iput-object v0, p0, Laaq;->a:Labh;

    .line 747
    :cond_2
    iget-boolean v0, p0, Laaq;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 748
    const/4 v0, 0x0

    iput v0, p0, Laaq;->a:I

    .line 750
    :cond_3
    invoke-direct {p0}, Laaq;->g()V

    .line 751
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    iget-object v1, p0, Laaq;->a:Labh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 752
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 755
    iget-boolean v0, p0, Laaq;->b:Z

    if-ne v0, v2, :cond_0

    .line 756
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 757
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const v1, 0x7f0b0285

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private l()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 766
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/sogou/scel/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-ne v2, v8, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v8, :cond_1

    .line 769
    new-instance v2, Laba;

    invoke-direct {v2, p0}, Laba;-><init>(Laaq;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 782
    if-nez v2, :cond_2

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    const-string v0, "scel scan dir is not exist ......"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 784
    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    .line 785
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 787
    :cond_3
    :try_start_0
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 789
    sget-object v1, Laaq;->a:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 790
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->g()Ljava/lang/String;

    move-result-object v4

    .line 791
    array-length v5, v2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_0

    aget-object v6, v2, v1

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>>>> asset contain scel : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 793
    sget-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    const-string v0, ".scel"

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v8, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >>>>> unzip a scel file : "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " in to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 798
    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    .line 791
    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 801
    :cond_5
    const/4 v0, 0x0

    .line 803
    :try_start_1
    iget-object v7, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 804
    :try_start_2
    const-string v7, "/sdcard/sogou/scel/"

    invoke-static {v0, v7, v6}, Lazj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 809
    :try_start_3
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 814
    :catch_0
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_4
    :try_start_4
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    throw v0

    .line 806
    :catch_1
    move-exception v6

    .line 809
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4
.end method

.method private m()V
    .locals 5

    .prologue
    .line 821
    sget-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    sget-object v0, Laaq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 823
    :try_start_0
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 824
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 825
    sget-object v4, Laaq;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 832
    :cond_0
    return-void
.end method

.method private n()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 835
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 836
    iget-object v0, p0, Laaq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 837
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 838
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    invoke-direct {p0}, Laaq;->l()V

    .line 840
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->a(Ljava/lang/Boolean;)V

    .line 842
    :cond_0
    invoke-direct {p0}, Laaq;->m()V

    .line 843
    new-instance v1, Ljava/io/File;

    const-string v0, "/sdcard/sogou/scel/"

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-ne v0, v9, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-ne v0, v9, :cond_a

    .line 847
    iget-object v0, p0, Laaq;->a:Landroid/content/SharedPreferences;

    iget-object v3, p0, Laaq;->a:Landroid/content/Context;

    const v4, 0x7f0b0077

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 849
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 850
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 851
    iget-object v6, p0, Laaq;->b:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".scel"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 852
    iget-object v6, p0, Laaq;->b:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".scel"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_2
    new-instance v0, Labb;

    invoke-direct {v0, p0}, Labb;-><init>(Laaq;)V

    invoke-virtual {v1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 866
    if-nez v3, :cond_4

    .line 912
    :cond_3
    :goto_1
    return-void

    .line 868
    :cond_4
    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_7

    aget-object v5, v3, v1

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " (in initlist)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    new-array v6, v9, [I

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sdcard/sogou/scel/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Laaq;->a(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-direct {p0, v0}, Laaq;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 876
    new-instance v7, Labp;

    invoke-direct {v7, p0, v10}, Labp;-><init>(Laaq;Laar;)V

    .line 877
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Labp;->a:Ljava/lang/String;

    .line 878
    aget v0, v6, v2

    iput v0, v7, Labp;->a:I

    .line 879
    iget-object v0, p0, Laaq;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-boolean v0, p0, Laaq;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, v7, Labp;->a:Ljava/lang/String;

    iget-object v6, p0, Laaq;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 882
    iput-boolean v9, p0, Laaq;->f:Z

    .line 883
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 884
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 885
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 891
    :cond_5
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    const v5, 0x7f0b0284

    invoke-static {v0, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 868
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 896
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 897
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    iget-object v3, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 899
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 902
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    iget-object v2, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 906
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the scel dir is not exit, create it : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 909
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1
.end method

.method private o()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 916
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 917
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 918
    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 919
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 920
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 923
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 924
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 925
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    const/high16 v1, 0x3f00

    invoke-direct {v0, v9, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 927
    iget-object v1, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 928
    return-void
.end method

.method private p()V
    .locals 0

    .prologue
    .line 1128
    invoke-direct {p0}, Laaq;->r()V

    .line 1129
    invoke-direct {p0}, Laaq;->s()V

    .line 1130
    invoke-direct {p0}, Laaq;->t()V

    .line 1131
    invoke-direct {p0}, Laaq;->u()V

    .line 1132
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1138
    :cond_0
    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    iget-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1141
    :cond_1
    iget-object v0, p0, Laaq;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laaq;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    iget-object v0, p0, Laaq;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1144
    :cond_2
    iget-object v0, p0, Laaq;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laaq;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1145
    iget-object v0, p0, Laaq;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1147
    :cond_3
    iget-object v0, p0, Laaq;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Laaq;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1148
    iget-object v0, p0, Laaq;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1150
    :cond_4
    iget-object v0, p0, Laaq;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Laaq;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1151
    iget-object v0, p0, Laaq;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1153
    :cond_5
    iget-object v0, p0, Laaq;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Laaq;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1154
    iget-object v0, p0, Laaq;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1156
    :cond_6
    iget-object v0, p0, Laaq;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Laaq;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1157
    iget-object v0, p0, Laaq;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1159
    :cond_7
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 1162
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labd;

    invoke-direct {v2, p0}, Labd;-><init>(Laaq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laaq;->a:Landroid/app/AlertDialog;

    .line 1172
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 1175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0285

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    new-instance v2, Labe;

    invoke-direct {v2, p0}, Labe;-><init>(Laaq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laaq;->b:Landroid/app/AlertDialog;

    .line 1186
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 1189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b0286

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    new-instance v2, Labf;

    invoke-direct {v2, p0}, Labf;-><init>(Laaq;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laaq;->d:Landroid/app/AlertDialog;

    .line 1202
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1205
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laaq;->g:Landroid/app/AlertDialog;

    .line 1209
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 1215
    iget-object v0, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Labg;

    invoke-direct {v0, p0}, Labg;-><init>(Laaq;)V

    iput-object v0, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    .line 1232
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1233
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1234
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1235
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1236
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1237
    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    iget-object v2, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1239
    :cond_0
    return-void
.end method

.method private w()V
    .locals 5

    .prologue
    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1370
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1371
    const/4 v3, 0x0

    const-string v4, ".scel"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1373
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1376
    :cond_0
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1377
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    const-string v2, ""

    iput-object v2, v0, Lamo;->j:Ljava/lang/String;

    .line 1379
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 1380
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->j:Ljava/lang/String;

    .line 1384
    :cond_2
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    const v3, 0x7f090003

    .line 1463
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Laaq;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 1465
    iget-object v0, p0, Laaq;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Laaq;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 1469
    iget-object v0, p0, Laaq;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    new-instance v1, Laav;

    invoke-direct {v1, p0}, Laav;-><init>(Laaq;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1474
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Laaq;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 1476
    iget-object v0, p0, Laaq;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Laaq;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 1479
    iget-object v0, p0, Laaq;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    new-instance v1, Laaw;

    invoke-direct {v1, p0}, Laaw;-><init>(Laaq;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1484
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v1, 0x7f070056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Laaq;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 1486
    iget-object v0, p0, Laaq;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Laaq;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 1489
    iget-object v0, p0, Laaq;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    new-instance v1, Laax;

    invoke-direct {v1, p0}, Laax;-><init>(Laaq;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1494
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    const v1, 0x7f070057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iput-object v0, p0, Laaq;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 1496
    iget-object v0, p0, Laaq;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    const v2, 0x7f0b02ee

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setText(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Laaq;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    iget-object v1, p0, Laaq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setColor(I)V

    .line 1499
    iget-object v0, p0, Laaq;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    new-instance v1, Laay;

    invoke-direct {v1, p0}, Laay;-><init>(Laaq;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1504
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1356
    .line 1357
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 1358
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1359
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    move v0, v1

    .line 1360
    :cond_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 1361
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 1362
    add-int/lit8 v3, v0, 0x1

    .line 1361
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 1365
    :cond_1
    return v0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 351
    invoke-direct {p0}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/sogou/scel/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Laaq;->b:Z

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 356
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 357
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    :cond_0
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 340
    invoke-direct {p0, p1}, Laaq;->a(Landroid/content/Intent;)Z

    .line 341
    invoke-direct {p0}, Laaq;->g()V

    .line 342
    const-string v0, "---------------------receiveIntent is called---------------------"

    invoke-static {v0}, Laaq;->e(Ljava/lang/String;)V

    .line 343
    iget-boolean v0, p0, Laaq;->c:Z

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Laaq;->c:Z

    .line 345
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 366
    :cond_0
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 367
    invoke-direct {p0}, Laaq;->k()V

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Laaq;->b:Z

    .line 369
    invoke-direct {p0}, Laaq;->q()V

    .line 370
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Laaq;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 374
    iget-object v0, p0, Laaq;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Laaq;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 424
    :cond_0
    invoke-direct {p0}, Laaq;->f()V

    .line 425
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Laaq;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 428
    :cond_1
    invoke-direct {p0}, Laaq;->q()V

    .line 430
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iput-object v2, p0, Laaq;->e:Ljava/util/List;

    .line 434
    :cond_2
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Laaq;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 436
    iput-object v2, p0, Laaq;->b:Ljava/util/List;

    .line 438
    :cond_3
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Laaq;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 440
    iput-object v2, p0, Laaq;->d:Ljava/util/List;

    .line 442
    :cond_4
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 443
    iget-object v0, p0, Laaq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 444
    iput-object v2, p0, Laaq;->c:Ljava/util/List;

    .line 446
    :cond_5
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 447
    iget-object v0, p0, Laaq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    iput-object v2, p0, Laaq;->a:Ljava/util/List;

    .line 450
    :cond_6
    iget-object v0, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7

    .line 451
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    iget-object v1, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    :cond_7
    iput-object v2, p0, Laaq;->a:Landroid/content/BroadcastReceiver;

    .line 454
    iget-object v0, p0, Laaq;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_8

    .line 455
    iget-object v0, p0, Laaq;->a:Landroid/content/Context;

    iget-object v1, p0, Laaq;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 457
    :cond_8
    iput-object v2, p0, Laaq;->b:Landroid/content/BroadcastReceiver;

    .line 459
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 460
    iget-object v0, p0, Laaq;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 461
    iput-object v2, p0, Laaq;->a:Ljava/lang/Thread;

    .line 464
    :cond_9
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 465
    iget-object v0, p0, Laaq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    iput-object v2, p0, Laaq;->e:Ljava/util/List;

    .line 468
    :cond_a
    iget-object v0, p0, Laaq;->a:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 469
    iget-object v0, p0, Laaq;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    iput-object v2, p0, Laaq;->a:Ljava/util/Map;

    .line 474
    :cond_b
    iget-object v0, p0, Laaq;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Laaq;->a:Landroid/widget/ListView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 478
    iput-object v2, p0, Laaq;->a:Labh;

    .line 479
    iput-object v2, p0, Laaq;->a:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 480
    iput-object v2, p0, Laaq;->b:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 481
    iput-object v2, p0, Laaq;->c:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 482
    iput-object v2, p0, Laaq;->d:Lcom/sohu/inputmethod/sogou/ImageTextButton;

    .line 484
    iput-object v2, p0, Laaq;->a:Landroid/widget/RelativeLayout;

    .line 485
    iput-object v2, p0, Laaq;->a:Landroid/app/AlertDialog;

    .line 486
    iput-object v2, p0, Laaq;->b:Landroid/app/AlertDialog;

    .line 487
    iput-object v2, p0, Laaq;->c:Landroid/app/AlertDialog;

    .line 488
    iput-object v2, p0, Laaq;->d:Landroid/app/AlertDialog;

    .line 489
    iput-object v2, p0, Laaq;->e:Landroid/app/AlertDialog;

    .line 490
    iput-object v2, p0, Laaq;->f:Landroid/app/AlertDialog;

    .line 491
    iput-object v2, p0, Laaq;->g:Landroid/app/AlertDialog;

    .line 492
    iput-object v2, p0, Laaq;->h:Landroid/app/AlertDialog;

    .line 493
    iput-object v2, p0, Laaq;->a:Landroid/app/ProgressDialog;

    .line 495
    iput-object v2, p0, Laaq;->a:Landroid/widget/ListView;

    .line 496
    iput-object v2, p0, Laaq;->a:[C

    .line 497
    iput-object v2, p0, Laaq;->a:Landroid/widget/LinearLayout;

    .line 500
    iput-object v2, p0, Laaq;->a:Landroid/content/Context;

    .line 501
    iput-object v2, p0, Laaq;->b:Landroid/content/Context;

    .line 502
    iput-object v2, p0, Laaq;->a:Landroid/view/View;

    .line 503
    iput-object v2, p0, Laaq;->a:Landroid/view/LayoutInflater;

    .line 505
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 688
    iget v0, p0, Laaq;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Laaq;->a:I

    .line 690
    iget-object v0, p0, Laaq;->a:Labh;

    invoke-virtual {v0}, Labh;->notifyDataSetChanged()V

    goto :goto_0
.end method
