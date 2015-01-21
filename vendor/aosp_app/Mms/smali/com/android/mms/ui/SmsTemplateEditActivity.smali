.class public Lcom/android/mms/ui/SmsTemplateEditActivity;
.super Landroid/app/Activity;
.source "SmsTemplateEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;,
        Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;,
        Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;,
        Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;
    }
.end annotation


# static fields
.field private static QUICK_TEXT_HAS_ALREADY:I

.field private static QUICK_TEXT_NULL:I

.field private static TAG:Ljava/lang/String;

.field private static TEXT:Ljava/lang/String;


# instance fields
.field private final MAX_EDITABLE_LENGTH:I

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addButton:Landroid/widget/Button;

.field private allQuickTextIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private allQuickTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMaxQuickTextId:Ljava/lang/Integer;

.field private mNewQuickText:Landroid/widget/EditText;

.field private mOldQuickText:Landroid/widget/EditText;

.field private mQuickText:Ljava/lang/String;

.field private mQuickTextId:Ljava/lang/Integer;

.field private mQuicktextAlertDialog:Landroid/app/AlertDialog;

.field private mToast:Landroid/widget/Toast;

.field private textItem:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "MMS/SmsTempalteEditor"

    sput-object v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->TAG:Ljava/lang/String;

    .line 95
    const-string v0, "text"

    sput-object v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->TEXT:Ljava/lang/String;

    .line 96
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_HAS_ALREADY:I

    .line 97
    const/4 v0, -0x2

    sput v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_NULL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    .line 115
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->MAX_EDITABLE_LENGTH:I

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->addQuickText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SmsTemplateEditActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickTextId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->updateST(Ljava/lang/Integer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->updateAllQuicktexts()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_HAS_ALREADY:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 92
    sget v0, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_NULL:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/Integer;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->delST(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SmsTemplateEditActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->showEditDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SmsTemplateEditActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->showEditDialog(Ljava/lang/String;)V

    return-void
.end method

.method private addQuickText()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mNewQuickText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, currentText:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    const v1, 0x7f0b027f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V

    .line 271
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->addST(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mNewQuickText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->updateAllQuicktexts()V

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b021f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_1
    const v1, 0x7f0b0220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->makeAToast(Ljava/lang/Integer;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private addST(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SmsTemplateEditActivity;->hasQuicktext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 287
    :goto_0
    return v1

    .line 280
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    sget-object v1, Lcom/android/mms/ui/SmsTemplateEditActivity;->TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 284
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInitQuickText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    .line 287
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private delST(Ljava/lang/Integer;)I
    .locals 4
    .parameter "id"

    .prologue
    .line 291
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getSTs()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 312
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private hasQuicktext(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    const/4 v2, 0x1

    .line 322
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAToast(Ljava/lang/Integer;)V
    .locals 2
    .parameter "strId"

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 350
    :cond_0
    return-void
.end method

.method private makeAToast(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 353
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 356
    :cond_0
    return-void
.end method

.method private showEditDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b021a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuickText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0299

    new-instance v2, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity$EditButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity$DeleteButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuicktextAlertDialog:Landroid/app/AlertDialog;

    .line 204
    return-void
.end method

.method private showEditDialog(Ljava/lang/String;)V
    .locals 7
    .parameter "quickText"

    .prologue
    const/4 v6, 0x0

    .line 359
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 360
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    .line 361
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    const v2, 0x7f0b01e8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 362
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->computeScroll()V

    .line 363
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 365
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 366
    iget-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 367
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mOldQuickText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/SmsTemplateEditActivity$UpdateButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/SmsTemplateEditActivity$CancelButtonListener;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;Lcom/android/mms/ui/SmsTemplateEditActivity$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mQuicktextAlertDialog:Landroid/app/AlertDialog;

    .line 374
    return-void
.end method

.method private updateAllQuicktexts()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    .line 327
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->getSTs()Landroid/database/Cursor;

    move-result-object v0

    .line 328
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 329
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 330
    if-eqz v0, :cond_2

    .line 332
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 334
    .local v1, qtId:I
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1           #qtId:I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040054

    iget-object v4, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 343
    iget-object v2, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    return-void
.end method

.method private updateST(Ljava/lang/Integer;Ljava/lang/String;)I
    .locals 5
    .parameter "id"
    .parameter "text"

    .prologue
    .line 295
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    sget v1, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_NULL:I

    .line 303
    :goto_0
    return v1

    .line 297
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SmsTemplateEditActivity;->hasQuicktext(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    sget v1, Lcom/android/mms/ui/SmsTemplateEditActivity;->QUICK_TEXT_HAS_ALREADY:I

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    sget-object v1, Lcom/android/mms/ui/SmsTemplateEditActivity;->TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$MmsSms;->CONTENT_URI_QUICKTEXT:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0f0191

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const v5, 0x7f04006e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 129
    const v5, 0x7f0b027f

    invoke-static {p0, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mToast:Landroid/widget/Toast;

    .line 130
    const v5, 0x7f0f0192

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->addButton:Landroid/widget/Button;

    .line 131
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->addButton:Landroid/widget/Button;

    const/high16 v6, 0x4150

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->addButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/mms/ui/SmsTemplateEditActivity$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/SmsTemplateEditActivity$1;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v5, 0x7f0f018f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mListView:Landroid/widget/ListView;

    .line 145
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/mms/ui/SmsTemplateEditActivity$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/SmsTemplateEditActivity$2;-><init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mNewQuickText:Landroid/widget/EditText;

    .line 160
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mNewQuickText:Landroid/widget/EditText;

    const v6, 0x7f0b01e8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHint(I)V

    .line 161
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->textItem:Landroid/widget/TextView;

    .line 164
    invoke-static {}, Lcom/android/mms/MmsConfig;->getInitQuickText()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->getSTs()Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 168
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 169
    if-eqz v0, :cond_2

    .line 171
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 172
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 173
    .local v3, qtId:I
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTextIds:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->allQuickTexts:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v3, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .end local v3           #qtId:I
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SmsTemplateEditActivity;->mMaxQuickTextId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, default_quick_texts:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 184
    aget-object v4, v1, v2

    .line 185
    .local v4, string:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/SmsTemplateEditActivity;->addST(Ljava/lang/String;)Z

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v4           #string:Ljava/lang/String;
    :cond_3
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setPreQuickText([Ljava/lang/String;)V

    .line 188
    invoke-static {v7}, Lcom/android/mms/MmsConfig;->setInitQuickText(Z)V

    .line 192
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #default_quick_texts:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->updateAllQuicktexts()V

    .line 193
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 379
    const/4 v0, 0x1

    return v0
.end method
