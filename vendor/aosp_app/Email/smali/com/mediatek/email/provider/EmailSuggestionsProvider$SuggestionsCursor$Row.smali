.class Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;
.super Ljava/lang/Object;
.source "EmailSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mRowNumber:I

.field private mSnippet:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "row"
    .parameter "displayName"
    .parameter "subject"
    .parameter "snippet"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->this$1:Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p3, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mDisplayName:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mSubject:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    .line 157
    iput p2, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mRowNumber:I

    return v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/email/provider/EmailSuggestionsProvider$SuggestionsCursor$Row;->mSubject:Ljava/lang/String;

    return-object v0
.end method
