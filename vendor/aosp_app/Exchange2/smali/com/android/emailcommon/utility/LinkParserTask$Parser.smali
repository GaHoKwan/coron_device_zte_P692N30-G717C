.class public Lcom/android/emailcommon/utility/LinkParserTask$Parser;
.super Ljava/lang/Object;
.source "LinkParserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/LinkParserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# static fields
.field private static final FIRST_ROUND_PATTERNS:Ljava/util/regex/Pattern; = null

.field private static final HREF_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final STR_HREF_PATTERN:Ljava/lang/String; = "(<a href=.+?</a>)"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 124
    const-string v0, "(<a href=.+?</a>)"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/LinkParserTask$Parser;->HREF_PATTERN:Ljava/util/regex/Pattern;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(<a href=.+?</a>)|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/utility/CustomPattern;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/LinkParserTask$Parser;->FIRST_ROUND_PATTERNS:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSurroundedByAngleBrachets(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .parameter "nextMatchStr"
    .parameter "text"
    .parameter "endIndex"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 172
    const-string v4, "<"

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 173
    .local v0, leftArrowIndex:I
    const-string v4, ">"

    invoke-virtual {p1, v4, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, rightArrowIndex:I
    if-ne v0, v5, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 176
    :cond_1
    if-eq v1, v5, :cond_2

    if-ne v0, v5, :cond_2

    move v2, v3

    .line 177
    goto :goto_0

    .line 178
    :cond_2
    if-gt v1, v0, :cond_0

    move v2, v3

    .line 181
    goto :goto_0
.end method

.method public static parseText(Ljava/lang/String;Landroid/os/AsyncTask;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "task"

    .prologue
    .line 141
    const-string v5, "LinkParserTask"

    const-string v6, "LinkParserTask.parseText"

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, sb:Ljava/lang/StringBuilder;
    sget-object v5, Lcom/android/emailcommon/utility/LinkParserTask$Parser;->FIRST_ROUND_PATTERNS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 144
    .local v0, matcher:Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 146
    .local v4, startIndex:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    const/4 v5, 0x0

    .line 167
    :goto_1
    return-object v5

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 151
    .local v3, start:I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, nextMatchStr:Ljava/lang/String;
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget-object v5, Lcom/android/emailcommon/utility/LinkParserTask$Parser;->HREF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v4, v3, v5

    .line 164
    goto :goto_0

    .line 155
    :cond_1
    sget-object v5, Lcom/android/emailcommon/utility/CustomPattern;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1, p0, v3}, Lcom/android/emailcommon/utility/LinkParserTask$Parser;->isSurroundedByAngleBrachets(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-eq v5, v6, :cond_3

    .line 159
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<a href="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</a>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 161
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 165
    .end local v1           #nextMatchStr:Ljava/lang/String;
    .end local v3           #start:I
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
