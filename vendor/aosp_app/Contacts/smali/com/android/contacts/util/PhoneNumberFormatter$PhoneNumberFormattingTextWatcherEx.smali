.class public Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;
.super Landroid/telephony/PhoneNumberFormattingTextWatcher;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberFormattingTextWatcherEx"
.end annotation


# static fields
.field protected static mSelfChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;->mSelfChanged:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;->mSelfChanged:Z

    .line 96
    invoke-super {p0, p1}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneNumberFormatter$PhoneNumberFormattingTextWatcherEx;->mSelfChanged:Z

    .line 98
    return-void
.end method
