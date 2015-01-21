.class public Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;
.super Landroid/app/Activity;
.source "IPDialNumberInput.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GetPassword"


# instance fields
.field private IPnumber:Landroid/widget/EditText;

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonOk:Landroid/widget/Button;

.field private mCancel:Landroid/view/View$OnClickListener;

.field private mClicked:Landroid/view/View$OnClickListener;

.field private which:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$1;-><init>(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)V

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mClicked:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$2;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput$2;-><init>(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)V

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mCancel:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->IPnumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->which:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 105
    const-string v0, "GetPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GetPassword] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/com/zte/nlt/NltConst;->URI_PUT_VALUE:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->IPnumber:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mButtonOk:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mButtonOk:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mButtonCancel:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mButtonCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->mCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method InitEditText(I)Landroid/widget/EditText;
    .locals 1
    .parameter "resId"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 55
    .local v0, view:Landroid/widget/EditText;
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->setupView()V

    .line 49
    invoke-virtual {p0}, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IP_DIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/com/zte/nlt/smartdailer/IPDialNumberInput;->which:Ljava/lang/String;

    .line 51
    return-void
.end method
