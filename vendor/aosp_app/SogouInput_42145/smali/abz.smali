.class public Labz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Labu;

.field private a:Lacd;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/util/SparseBooleanArray;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Vector;

.field private a:Z

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 58
    iput-object p3, p0, Labz;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 59
    iput-object p1, p0, Labz;->a:Landroid/content/Context;

    .line 60
    new-instance v0, Labu;

    invoke-direct {v0}, Labu;-><init>()V

    iput-object v0, p0, Labz;->a:Labu;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labz;->a:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Labz;->b:Ljava/util/Vector;

    .line 63
    iget-object v0, p0, Labz;->a:Landroid/content/Context;

    iget-object v3, p0, Labz;->a:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Labz;->a:Landroid/view/LayoutInflater;

    .line 64
    iget-object v0, p0, Labz;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    const v0, 0x1020016

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Labz;->a:Landroid/widget/TextView;

    .line 66
    const v0, 0x1020006

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Labz;->a:Landroid/widget/ImageView;

    .line 68
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Labz;->a:Landroid/util/SparseBooleanArray;

    .line 70
    const v0, 0x102000a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Labz;->a:Landroid/widget/ListView;

    .line 71
    new-instance v0, Lacd;

    invoke-direct {v0, p0}, Lacd;-><init>(Labz;)V

    iput-object v0, p0, Labz;->a:Lacd;

    .line 72
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    iget-object v4, p0, Labz;->a:Lacd;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 74
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 75
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    iget-object v4, p0, Labz;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    new-instance v4, Laca;

    invoke-direct {v4, p0}, Laca;-><init>(Labz;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Labz;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    .line 95
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 96
    iput-object p2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 97
    const/16 v4, 0x3eb

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 98
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 99
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 100
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    iget-object v4, p0, Labz;->a:Landroid/content/Context;

    const v5, 0x7f0b02af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lacb;

    invoke-direct {v5, p0}, Lacb;-><init>(Labz;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Labz;->a:Landroid/content/Context;

    const v5, 0x7f0b02b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lacc;

    invoke-direct {v5, p0}, Lacc;-><init>(Labz;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "construcor cost"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->b(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method static synthetic a(Labz;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Labz;->a:I

    return p1
.end method

.method static synthetic a(Labz;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Labz;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Labz;->a:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic a(Labz;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Labz;)Lcom/sohu/inputmethod/sogou/SogouIME;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Labz;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    return-object v0
.end method

.method private a()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Labz;->a:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, " "

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const-string v0, " "

    goto :goto_0
.end method

.method static synthetic a(Labz;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Labz;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Labz;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    return-object v0
.end method

.method private a(Labu;)V
    .locals 6
    .parameter

    .prologue
    .line 210
    invoke-virtual {p1}, Labu;->a()Ljava/util/Vector;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Labu;->b()Ljava/util/Vector;

    move-result-object v1

    .line 212
    invoke-virtual {p1}, Labu;->c()Ljava/util/Vector;

    move-result-object v2

    .line 213
    invoke-virtual {p1}, Labu;->d()Ljava/util/Vector;

    move-result-object v3

    .line 214
    invoke-virtual {p1}, Labu;->e()Ljava/util/Vector;

    move-result-object v4

    .line 215
    iget-object v5, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 217
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 219
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 220
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Labz;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Labz;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Labz;->a:Z

    return v0
.end method

.method static synthetic a(Labz;Landroid/util/SparseBooleanArray;)[I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Labz;->a(Landroid/util/SparseBooleanArray;)[I

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/util/SparseBooleanArray;)[I
    .locals 3
    .parameter

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 158
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 159
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 174
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 175
    iget-object v0, p0, Labz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labz;->a:Labu;

    invoke-virtual {v0}, Labu;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    new-instance v0, Labw;

    invoke-direct {v0}, Labw;-><init>()V

    .line 177
    iput v2, v0, Labw;->b:I

    .line 178
    iget-object v1, p0, Labz;->a:Labu;

    invoke-virtual {v1}, Labu;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Labw;->a:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Labz;->a:Labu;

    iput-object v1, v0, Labw;->a:Labu;

    .line 180
    iget-object v1, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    iget-object v0, p0, Labz;->a:Labu;

    invoke-direct {p0, v0}, Labz;->a(Labu;)V

    move v1, v2

    .line 183
    :goto_0
    iget-object v0, p0, Labz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 184
    iget-object v0, p0, Labz;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labu;

    .line 185
    invoke-virtual {v0}, Labu;->a()I

    move-result v5

    if-lez v5, :cond_1

    .line 186
    new-instance v5, Labw;

    invoke-direct {v5}, Labw;-><init>()V

    .line 187
    iput v2, v5, Labw;->b:I

    .line 188
    invoke-virtual {v0}, Labu;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Labw;->a:Ljava/lang/String;

    .line 189
    iput-object v0, v5, Labw;->a:Labu;

    .line 190
    iget-object v6, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-direct {p0, v0}, Labz;->a(Labu;)V

    .line 183
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 194
    :cond_2
    :goto_1
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 195
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 196
    iget v1, v0, Labw;->b:I

    if-nez v1, :cond_3

    .line 197
    iget-object v1, p0, Labz;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030010

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Labw;->a:Landroid/view/View;

    .line 198
    iget-object v1, v0, Labw;->a:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Labw;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_3
    iget-object v1, p0, Labz;->a:Landroid/view/LayoutInflater;

    const v5, 0x7f030012

    invoke-virtual {v1, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/ui/ContactItemView;

    iput-object v1, v0, Labw;->a:Landroid/view/View;

    .line 201
    iget-object v1, v0, Labw;->a:Landroid/view/View;

    check-cast v1, Lcom/sohu/inputmethod/ui/ContactItemView;

    check-cast v1, Lcom/sohu/inputmethod/ui/ContactItemView;

    iget-object v5, v0, Labw;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/sohu/inputmethod/ui/ContactItemView;->setLabel(Ljava/lang/String;)V

    .line 202
    iget-object v1, v0, Labw;->a:Landroid/view/View;

    check-cast v1, Lcom/sohu/inputmethod/ui/ContactItemView;

    check-cast v1, Lcom/sohu/inputmethod/ui/ContactItemView;

    iget-object v0, v0, Labw;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/ui/ContactItemView;->setData(Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configList cost "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->b(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Labz;->a:I

    return v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 274
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 224
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iput v2, p0, Labz;->a:I

    .line 232
    iput-object p1, p0, Labz;->a:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Labz;->a:Labu;

    invoke-virtual {v0}, Labu;->a()V

    .line 234
    iget-object v0, p0, Labz;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 236
    iget-object v0, p0, Labz;->a:Landroid/content/Context;

    iget-object v5, p0, Labz;->a:Ljava/lang/String;

    iget-object v6, p0, Labz;->a:Labu;

    iget-object v7, p0, Labz;->a:Ljava/util/Vector;

    invoke-static {v0, v5, v6, v7}, Lace;->a(Landroid/content/Context;Ljava/lang/String;Labu;Ljava/util/Vector;)V

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrieve contact cost "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-long v3, v5, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->b(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Labz;->b()V

    .line 243
    iget-object v0, p0, Labz;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaincontact photo="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Labz;->a:Labu;

    invoke-virtual {v0}, Labu;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labz;->b(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Labz;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Labz;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v0, p0, Labz;->a:Lacd;

    invoke-virtual {v0}, Lacd;->notifyDataSetChanged()V

    .line 247
    iget-object v0, p0, Labz;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 248
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 249
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    iget-object v0, v0, Labw;->a:Landroid/view/View;

    instance-of v0, v0, Lcom/sohu/inputmethod/ui/ContactItemView;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 252
    iget-object v0, p0, Labz;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 258
    :cond_0
    :goto_1
    iget-object v0, p0, Labz;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 259
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int/2addr v0, v3

    const/high16 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 260
    iput-boolean v2, p0, Labz;->a:Z

    .line 264
    :goto_2
    iget-object v0, p0, Labz;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 265
    return v1

    :cond_1
    move v0, v2

    .line 244
    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Labz;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Labz;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 255
    iget-object v0, p0, Labz;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 262
    :cond_3
    iput-boolean v1, p0, Labz;->a:Z

    goto :goto_2
.end method
