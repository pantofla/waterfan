<tr>
	<td><img src="{$user_avatar}" class="avatar"/> <a href="{$user_userlink}">{$user_username}</a></td>
	<td>{$user_total_links}</td>
	{if $user_total_links gt 0}
		<td>{$user_published_links}&nbsp;({$user_published_links_percent}%)</td>
	{else}
		<td>{$user_published_links}&nbsp;(-)</td>
	{/if}
	<td>{$user_total_comments}</td>
	<td>{$user_total_votes}</td>
	{if $user_total_votes gt 0}
		<td>{$user_published_votes}&nbsp;({$user_published_votes_percent}%)</td>
	{else}
		<td>{$user_published_votes}&nbsp;(-)</td>
	{/if}
	<td>{$user_karma}</td>
</tr>
