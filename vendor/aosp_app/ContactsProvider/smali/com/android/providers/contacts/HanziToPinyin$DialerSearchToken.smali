.class Lcom/android/providers/contacts/HanziToPinyin$DialerSearchToken;
.super Lcom/android/providers/contacts/HanziToPinyin$Token;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialerSearchToken"
.end annotation


# static fields
.field static final FIRSTCASE:I = 0x0

.field static final LOWERCASE:I = 0x2

.field static final UPPERCASE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/HanziToPinyin;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/HanziToPinyin;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/android/providers/contacts/HanziToPinyin$DialerSearchToken;->this$0:Lcom/android/providers/contacts/HanziToPinyin;

    invoke-direct {p0}, Lcom/android/providers/contacts/HanziToPinyin$Token;-><init>()V

    return-void
.end method
