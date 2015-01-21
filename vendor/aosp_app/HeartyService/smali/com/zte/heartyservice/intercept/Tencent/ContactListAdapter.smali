.class public Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;
    }
.end annotation


# static fields
.field public static final COMMAND_ADD_CONTACT:I = 0x3e9

.field public static final TYPE_SINGLE_SELECT_LIST:I = 0x3


# instance fields
.field private mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

.field private mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInstance:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

.field private mListdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/ContactDao;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "ContactDao"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;",
            "Lcom/zte/heartyservice/intercept/Tencent/ContactDao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, Listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 48
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->showRemoveContactDialog(Lcom/zte/heartyservice/intercept/Tencent/Contact;)V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    return-object p1
.end method

.method private showRemoveContactDialog(Lcom/zte/heartyservice/intercept/Tencent/Contact;)V
    .locals 8
    .parameter "contact"

    .prologue
    .line 129
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 130
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0221

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, infoDelFormatt:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, infoDelText:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 135
    const v5, 0x7f0a0226

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 136
    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;

    invoke-direct {v6, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    const v5, 0x7f0a0174

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$4;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 160
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 161
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 162
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 244
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    const v8, 0x7f0a0510

    const v7, 0x7f0a050f

    .line 59
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 61
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    if-nez p2, :cond_3

    .line 62
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03006f

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;

    invoke-direct {v1, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;)V

    .line 64
    .local v1, holder:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;
    const v4, 0x7f0e013e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    .line 65
    const v4, 0x7f0e0140

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mRule:Landroid/widget/TextView;

    .line 66
    const v4, 0x7f0e013f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mNumber:Landroid/widget/TextView;

    .line 67
    const v4, 0x7f0e0141

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :goto_0
    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 74
    .local v2, name:Ljava/lang/String;
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mName:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0a021f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getType()I

    move-result v4

    if-nez v4, :cond_7

    .line 76
    const-string v3, ""

    .line 77
    .local v3, rule:Ljava/lang/String;
    iget-boolean v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v4, :cond_5

    .line 78
    iget-boolean v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v4, :cond_4

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 88
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mRule:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mRule:Landroid/widget/TextView;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .end local v3           #rule:Ljava/lang/String;
    :goto_3
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mNumber:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mDelBtn:Landroid/widget/Button;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;

    invoke-direct {v5, p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object p2

    .line 71
    .end local v1           #holder:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;
    goto/16 :goto_0

    .line 81
    .restart local v3       #rule:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 83
    :cond_5
    iget-boolean v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 90
    :cond_6
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mRule:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0a05ad

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 111
    .end local v3           #rule:Ljava/lang/String;
    :cond_7
    iget-object v4, v1, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$BodyViewHolder;->mRule:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, Listdata:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public showRestoreAllDialogByAddress(Ljava/lang/String;)V
    .locals 7
    .parameter "address"

    .prologue
    .line 174
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 175
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0a0227

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, title:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a0228

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a0229

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;

    invoke-direct {v6, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$5;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    const v5, 0x7f0a0174

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$6;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$6;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 218
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 219
    return-void
.end method
