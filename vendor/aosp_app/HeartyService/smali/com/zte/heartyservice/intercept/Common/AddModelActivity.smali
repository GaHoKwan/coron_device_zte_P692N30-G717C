.class public Lcom/zte/heartyservice/intercept/Common/AddModelActivity;
.super Landroid/app/Activity;
.source "AddModelActivity.java"


# static fields
.field private static final ADD_TYPE:Ljava/lang/String; = "add_type"

.field private static final BLACK_TYPE:I = 0x0

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final NUMBER_ARRAY:Ljava/lang/String; = "numberArray"

.field private static final NUMBER_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "AddModelActivity"

.field private static final UNDEFINED_TYPE:I = -0x1

.field private static final WHITE_TYPE:I = 0x1


# instance fields
.field private mChecked:[Z

.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mName:Ljava/lang/String;

.field private mNumberArray:[Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://com.zte.heartyservice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->addItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private addItem()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 155
    const/4 v3, 0x0

    .line 156
    .local v3, insertCount:I
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mNumberArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 157
    .local v5, number:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->fomatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 163
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "name"

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v6, "phone_number"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "type"

    iget v7, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v6, "enable_sms"

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    aget-boolean v7, v7, v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    const-string v6, "enable_calling"

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    const/4 v8, 0x1

    aget-boolean v7, v7, v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 173
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v5           #number:Ljava/lang/String;
    :cond_2
    if-lez v3, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a038b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 178
    :cond_3
    return-void
.end method

.method private fomatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    const/4 v4, 0x3

    .line 181
    if-nez p1, :cond_0

    .line 182
    const/4 v2, 0x0

    .line 193
    :goto_0
    return-object v2

    .line 184
    :cond_0
    const-string v2, "[^0-9\\+\\*]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 185
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 186
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "AddModelActivity"

    const-string v3, "number has +86"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    move-object v2, p1

    .line 193
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f0a0173

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mName:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "add_type"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    .line 48
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.START_ActiveMainAddBlock_BLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    iput v4, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mIntent:Landroid/content/Intent;

    const-string v3, "numberArray"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mNumberArray:[Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mNumberArray:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56
    const-string v2, "AddModelActivity"

    const-string v3, "++numberArray=null++return++"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0387

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 60
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->finish()V

    .line 152
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 136
    const-string v2, "AddModelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error mType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->finish()V

    goto :goto_0

    .line 68
    :pswitch_0
    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0388

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07003d

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    new-instance v5, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$1;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$6;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$6;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$5;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$5;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    aput-boolean v4, v2, v4

    .line 95
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z

    const/4 v3, 0x1

    aput-boolean v4, v2, v3

    .line 96
    const v2, 0x7f02000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0389

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a038a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 109
    :pswitch_2
    const v2, 0x7f07003e

    new-instance v3, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
