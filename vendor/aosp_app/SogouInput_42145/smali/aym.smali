.class public Laym;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# static fields
.field public static a:I

.field public static a:Ljava/lang/StringBuilder;

.field private static b:I


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/inputmethodservice/InputMethodService;

.field private a:Landroid/view/LayoutInflater;

.field private a:Lawv;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Laym;->a:Ljava/lang/StringBuilder;

    .line 47
    const/4 v0, 0x0

    sput v0, Laym;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Laym;->b:Z

    .line 62
    iput-object p1, p0, Laym;->a:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Laym;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laym;->a:Landroid/view/LayoutInflater;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laym;->a:Ljava/util/List;

    .line 66
    iput-object p2, p0, Laym;->a:Landroid/inputmethodservice/InputMethodService;

    .line 67
    return-void
.end method

.method private a(Lawe;)V
    .locals 1
    .parameter

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Lawe;->a()Lawv;

    move-result-object v0

    iput-object v0, p0, Laym;->a:Lawv;

    goto :goto_0
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 264
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Laox;->E:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Laox;->G:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v4, 0x9

    new-instance v5, Layn;

    invoke-direct {v5}, Layn;-><init>()V

    invoke-static {v1, v2, v3, v4, v5}, Lazj;->a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ILjava/io/FilenameFilter;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->E:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Layo;

    invoke-direct {v1}, Layo;-><init>()V

    invoke-static {v0, v1}, Layw;->a(Ljava/io/File;Ljava/io/FileFilter;)Z

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->H:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-static {v0}, Layw;->a(Ljava/io/File;)Z

    .line 239
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 240
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 241
    sget-object v0, Laym;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 242
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 243
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    sget-object v0, Laym;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 250
    sput v3, Laym;->a:I

    .line 260
    return-void

    .line 237
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 135
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 137
    const-string v0, "|||"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Laym;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Laym;->c()V

    .line 110
    :cond_0
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    invoke-virtual {p0}, Laym;->notifyDataSetChanged()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Laym;->b:Z

    .line 113
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    sput p1, Laym;->b:I

    .line 75
    return-void
.end method

.method public a(Lcom/sohu/inputmethod/sogou/SogouIME;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Laym;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 149
    if-nez p2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Laym;->a:Landroid/inputmethodservice/InputMethodService;

    check-cast v0, Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget-object v1, Larz;->e:Larz;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p4, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0}, Laym;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Larz;[Ljava/lang/Object;)V

    .line 166
    :cond_2
    if-nez p3, :cond_3

    .line 167
    iget-object v0, p0, Laym;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cH:I

    .line 171
    :cond_3
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 172
    invoke-interface {p2, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 173
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 174
    iget-object v0, p0, Laym;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->af:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lamo;->af:I

    .line 176
    iget-object v0, p0, Laym;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->cG:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->cG:I

    .line 177
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iput p3, v0, Lgt;->d:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Laym;->a:Ljava/lang/String;

    .line 117
    iput-boolean p2, p0, Laym;->a:Z

    .line 118
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-virtual {p0}, Laym;->notifyDataSetChanged()V

    .line 185
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Laym;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 91
    sget v0, Laox;->b:I

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 93
    :cond_0
    const v0, 0x7f070215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Laym;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Laym;->b:Z

    .line 314
    invoke-virtual {p0, v1}, Laym;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    if-nez v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Laym;->a:Landroid/inputmethodservice/InputMethodService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Laym;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Laym;->a:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Laym;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, v3}, Laym;->a(Ljava/lang/String;Landroid/view/inputmethod/InputConnection;ILjava/lang/String;)V

    .line 322
    :cond_1
    invoke-virtual {p0}, Laym;->a()V

    .line 323
    iget-object v0, p0, Laym;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->x()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    instance-of v0, p1, Laxc;

    if-eqz v0, :cond_0

    .line 298
    check-cast p1, Laxc;

    sget v0, Laym;->b:I

    invoke-virtual {p1, v0}, Laxc;->a(I)Lawe;

    move-result-object v0

    invoke-direct {p0, v0}, Laym;->a(Lawe;)V

    .line 300
    :cond_0
    return-void
.end method
