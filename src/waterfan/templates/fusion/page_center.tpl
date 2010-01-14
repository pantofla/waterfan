{$page_content}

{if isset($isgod) && $isgod eq 1}
	<div class="edit">
		<a href="{$my_base_url}{$my_pligg_base}/admin/edit_page.php?link_id={$link_id}">{#PLIGG_Visual_AdminPanel_Page_Edit#}</a>
	</div>
{/if}