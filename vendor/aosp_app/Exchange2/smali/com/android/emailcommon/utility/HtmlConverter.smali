.class public Lcom/android/emailcommon/utility/HtmlConverter;
.super Ljava/lang/Object;
.source "HtmlConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/HtmlConverter$1;,
        Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;
    }
.end annotation


# static fields
.field private static final NBSP_CHARACTER:C = '\u00a0'

.field private static final NBSP_REPLACEMENT:C = ' '

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern; = null

.field private static final PREVIEW_OBJECT_CHARACTER:C = '\ufffc'

.field private static final PREVIEW_OBJECT_REPLACEMENT:C = ' '


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "\r?\n\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/HtmlConverter;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "text"

    .prologue
    .line 96
    sget-object v4, Lcom/android/emailcommon/utility/HtmlConverter;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 97
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 98
    .local v2, match:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 102
    .local v1, end:I
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 103
    .local v5, start:I
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 105
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 106
    .local v0, c:I
    const/16 v6, 0xd

    if-eq v0, v6, :cond_1

    const/16 v6, 0xa

    if-ne v0, v6, :cond_2

    .line 107
    :cond_1
    const-string v6, "\r\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v3           #out:Ljava/lang/StringBuilder;
    .end local v5           #start:I
    :cond_3
    return-object p0
.end method

.method public static htmlToText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "html"

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x20

    .line 122
    new-instance v1, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/utility/HtmlConverter$HtmlToTextTagHandler;-><init>(Lcom/android/emailcommon/utility/HtmlConverter$1;)V

    invoke-static {p0, v2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0xfffc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, text:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/utility/HtmlConverter;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
